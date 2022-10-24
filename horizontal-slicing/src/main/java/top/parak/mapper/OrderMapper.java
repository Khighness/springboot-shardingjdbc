package top.parak.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;
import top.parak.entity.Order;
import top.parak.entity.OrderVO;

import java.util.List;

/**
 * @author KHighness
 * @since 2022-10-24
 * @email parakovo@gmail.com
 */
@Mapper
@Repository
public interface OrderMapper extends BaseMapper<Order> {

    @Select({"SELECT o.order_no as order_no, SUM(i.price * i.count) AS amount",
            "FROM t_order o JOIN t_order_item i ON o.order_no = i.order_no",
            "WHERE o.user_id = #{userId}",
            "GROUP BY o.order_no"})
    List<OrderVO> gerOrderAmount(@Param("userId") long userId);

}
