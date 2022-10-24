package top.parak.entity;

import lombok.Data;

import java.math.BigDecimal;

/**
 * @author KHighness
 * @since 2022-10-24
 * @email parakovo@gmail.com
 */
@Data
public class OrderVO {

    private String orderNo;

    private BigDecimal amount;

}
