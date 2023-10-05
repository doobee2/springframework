package kr.ed.haebeop.service;


import kr.ed.haebeop.domain.User;

import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {


    @Override
    public List<User> userList() throws Exception {
        return null;
    }

    @Override
    public User getUser(String id) throws Exception {
        return null;
    }

    @Override
    public void userInsert(User dto) throws Exception {

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
    public boolean login(HttpServletRequest request) throws Exception {
        return false;
    }

    @Override
    public void userUpdate(User mdto) throws Exception {

    }

    @Override
    public void userDelete(User mdto) throws Exception {

    }
}