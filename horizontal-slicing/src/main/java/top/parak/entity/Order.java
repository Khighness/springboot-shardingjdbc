package top.parak.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Builder;
import lombok.Data;

import java.math.BigDecimal;

/**
 * @author KHighness
 * @since 2022-10-24
 * @email parakovo@gmail.com
 */
@Builder
@Data
@TableName("t_order")
public class Order {

    /**
     * AUTO
     * 当配置了shardingsphere-jdbc的分布式序列时，自动使用shardingsphere=jdbc的分布式序列
     * 没有配置shardingsphere-jdbc的分布式序列时，自动依赖数据库的主键自增策略
     */
     @TableId(type = IdType.AUTO)
    private Long id;

    private String orderNo;

    private Long userId;

    private BigDecimal amount;

}
