package top.parak;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import top.parak.entity.Dict;
import top.parak.entity.Order;
import top.parak.entity.OrderItem;
import top.parak.entity.OrderVO;
import top.parak.mapper.DictMapper;
import top.parak.mapper.OrderItemMapper;
import top.parak.mapper.OrderMapper;
import top.parak.mapper.UserMapper;

import java.math.BigDecimal;
import java.util.List;
import java.util.Random;

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
public class HorizontalSlicingApplicationTest {

    @Autowired
    private UserMapper userMapper;

    @Autowired
    private OrderMapper orderMapper;

    @Autowired
    private OrderItemMapper orderItemMapper;

    @Autowired
    private DictMapper dictMapper;

    /**
     * 水平分片：分库插入数据测试
     * userId  决定插入哪个库
     * orderNo 决定插入哪个表
     */
    @Test
    public void insertTest() {
        for (long i = 1; i <= 5; i++) {
            Order order = Order.builder().orderNo(Long.toString(i)).userId(i).amount(new BigDecimal(100)).build();
            orderMapper.insert(order);
        }
    }

    /**
     * 测试关联表插入
     *
     */
    @Test
    public void insertAssociateTest() {
        Random random = new Random();

        for (long i = 1; i <= 5; i++) {
            Order order = Order.builder().orderNo("K" + i).userId(1L).build();
            orderMapper.insert(order);

            for (int j = 0; j < 3; j++) {
                OrderItem orderItem = OrderItem.builder()
                        .orderNo("K" + i)
                        .userId(1L)
                        .price(new BigDecimal(random.nextInt(500)))
                        .count(random.nextInt(5))
                        .build();
                orderItemMapper.insert(orderItem);
            }
        }

        for (long i = 1; i <= 5; i++) {
            Order order = Order.builder().orderNo("K" + i).userId(2L).build();
            orderMapper.insert(order);
            for (int j = 0; j < 3; j++) {
                OrderItem orderItem = OrderItem.builder()
                        .orderNo("K" + i)
                        .userId(2L)
                        .price(new BigDecimal(random.nextInt(500)))
                        .count(random.nextInt(5))
                        .build();
                orderItemMapper.insert(orderItem);
            }
        }
    }

    @Test
    public void queryTest1() {
        List<Order> orderList = orderMapper.selectList(null);
        orderList.forEach(System.out::println);
    }

    @Test
    public void queryTest2() {
        QueryWrapper<Order> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("user_id", 1L);
        List<Order> orderList = orderMapper.selectList(queryWrapper);
        orderList.forEach(System.out::println);
    }

    @Test
    public void queryTest3() {
        List<OrderVO> orderVOList = orderMapper.gerOrderAmount(1L);
        orderVOList.forEach(System.out::println);
    }

    @Test
    public void deleteTest() {
        QueryWrapper<Order> queryWrapper = new QueryWrapper<>();
        queryWrapper.ge("id", 0L);
        int count = orderMapper.delete(queryWrapper);
        System.out.println(count);
    }

    /**
     * 广播表插入测试
     */
    @Test
    public void insertBroadcastTest() {
        Dict dict = new Dict();
        dict.setDictType("t1");
        dictMapper.insert(dict);
    }

}
