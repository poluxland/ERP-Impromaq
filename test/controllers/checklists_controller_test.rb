require 'test_helper'

class ChecklistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @checklist = checklists(:one)
  end

  test "should get index" do
    get checklists_url
    assert_response :success
  end

  test "should get new" do
    get new_checklist_url
    assert_response :success
  end

  test "should create checklist" do
    assert_difference('Checklist.count') do
      post checklists_url, params: { checklist: { acatf: @checklist.acatf, achidraulico: @checklist.achidraulico, acmotor: @checklist.acmotor, acnuto: @checklist.acnuto, actrans: @checklist.actrans, c1: @checklist.c1, c10: @checklist.c10, c11: @checklist.c11, c12: @checklist.c12, c13: @checklist.c13, c14: @checklist.c14, c15: @checklist.c15, c16: @checklist.c16, c17: @checklist.c17, c18: @checklist.c18, c19: @checklist.c19, c2: @checklist.c2, c3: @checklist.c3, c4: @checklist.c4, c5: @checklist.c5, c6: @checklist.c6, c7: @checklist.c7, c8: @checklist.c8, c9: @checklist.c9, combustible: @checklist.combustible, equipo: @checklist.equipo, horometro: @checklist.horometro, nombre: @checklist.nombre, operativo: @checklist.operativo } }
    end

    assert_redirected_to checklist_url(Checklist.last)
  end

  test "should show checklist" do
    get checklist_url(@checklist)
    assert_response :success
  end

  test "should get edit" do
    get edit_checklist_url(@checklist)
    assert_response :success
  end

  test "should update checklist" do
    patch checklist_url(@checklist), params: { checklist: { acatf: @checklist.acatf, achidraulico: @checklist.achidraulico, acmotor: @checklist.acmotor, acnuto: @checklist.acnuto, actrans: @checklist.actrans, c1: @checklist.c1, c10: @checklist.c10, c11: @checklist.c11, c12: @checklist.c12, c13: @checklist.c13, c14: @checklist.c14, c15: @checklist.c15, c16: @checklist.c16, c17: @checklist.c17, c18: @checklist.c18, c19: @checklist.c19, c2: @checklist.c2, c3: @checklist.c3, c4: @checklist.c4, c5: @checklist.c5, c6: @checklist.c6, c7: @checklist.c7, c8: @checklist.c8, c9: @checklist.c9, combustible: @checklist.combustible, equipo: @checklist.equipo, horometro: @checklist.horometro, nombre: @checklist.nombre, operativo: @checklist.operativo } }
    assert_redirected_to checklist_url(@checklist)
  end

  test "should destroy checklist" do
    assert_difference('Checklist.count', -1) do
      delete checklist_url(@checklist)
    end

    assert_redirected_to checklists_url
  end
end
