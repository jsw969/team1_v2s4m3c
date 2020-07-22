package dev.mvc.admini;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

public interface AdminiProcInter {

  /**
   * ������ ���� ���
   * @param adminiVO
   * @return
   */
  public int create(AdminiVO adminiVO);
  
  /**
   * ������ ���� ���
   * @return
   */
  public List<AdminiVO> list();
  
  /**
   * ���������� �˻�
   * @param session
   * @return
   */
  public boolean isAdmin(HttpSession session);
  
  /**
   * ���� 1�� ��ȸ
   * @return
   */
  public AdminiVO read(int adminno);
  
  /**
   * adminno �ִ밪 ����
   * @return
   */
  public int read_max_adminno();
  
  /**
   * adminno �ּҰ� ����
   * @return
   */
  public int read_min_adminno();
  
  public int check_adno(int adminno);
  
  /**
   * ���� ������Ʈ
   * @param adminiVO
   * @return
   */
  public int update(AdminiVO adminiVO);
  
  /**
   * ���� ����
   */
  public int delete(int adminno);
  
  /**
   * ID �ߺ� üũ
   * @param map
   * @return
   */
  public int idcheckdup(HashMap<Object, Object> map);
  
  /**
   * �г��� �ߺ� üũ
   * @param map
   * @return
   */
  public int nickcheckdup(HashMap<Object, Object> map);
  
  public int login(Map<Object, Object> map);
  
  public AdminiVO readById(String identify);
  
  public int acclevel_up(int adminno);
  
  public int acclevel_down(int adminno);
}