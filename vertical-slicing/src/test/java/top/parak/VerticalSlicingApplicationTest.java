package top.parak;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.math.BigDecimal;

import top.parak.entity.Order;
import top.parak.entity.User;
import top.parak.mapper.OrderMapper;
import top.parak.mapper.UserMapper;

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
public class VerticalSlicingApplicationTest {

    @Autowired
    private UserMapper userMapper;

    @Autowired
    private OrderMapper orderMapper;

    @Test
    public void insertTest() {
        User user = User.builder().uname("KHighness").build();
        userMapper.insert(user);

        Order order = Order.builder().orderNo("K000111").userId(user.getId()).amount(new BigDecimal(100)).build();
        orderMapper.insert(order);
    }

}
