package top.parak.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import top.parak.entity.OrderItem;

/**
 * @author KHighness
 * @since 2022-10-24
 * @email parakovo@gmail.com
 */
@Mapper
@Repository
public interface OrderItemMapper extends BaseMapper<OrderItem> {

}
