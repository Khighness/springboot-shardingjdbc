package top.parak.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import top.parak.entity.User;

/**
 * @author KHighness
 * @email parakovo@gmail.com
 * @since 2022-10-24
 */
@Mapper
@Repository
public interface UserMapper extends BaseMapper<User> {

}
