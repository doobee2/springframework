package kr.ed.haebeop.repository;

import kr.ed.haebeop.domain.User;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class UserPersistenceImpl implements UserPersistence{

    @Autowired
    private SqlSession sqlSession;

    @Override
    public List<User> userList() throws Exception {
        return sqlSession.selectList("user.userList");
    }

    @Override
    public User getUser(String id) throws Exception {
        return sqlSession.selectOne("user.geUser");
    }

    @Override
    public void userInsert(User dto) throws Exception {
        sqlSession.insert("user.userInsert");
    }

    @Override
    public User signIn(User mdto) throws Exception {
        return null;
    }

    @Override
    public User loginCheck(User mdto) throws Exception {
        return null;
    }

    @Override
    public User login(User mdto) throws Exception {
        return null;
    }

    @Override
    public void userUpdate(User mdto) throws Exception {

    }

    @Override
    public void userDelete(User mdto) throws Exception {

    }
}
