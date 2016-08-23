package com.smanggin



import org.junit.*
import grails.test.mixin.*

/**
 * PppNigeriaControllerTests
 * A unit test class is used to test individual methods or blocks of code without considering the surrounding infrastructure
 */
@TestFor(PppNigeriaController)
@Mock(PppNigeria)
class PppNigeriaControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/pppNigeria/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.pppNigeriaInstanceList.size() == 0
        assert model.pppNigeriaInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.pppNigeriaInstance != null
    }

    void testSave() {
        controller.save()

        assert model.pppNigeriaInstance != null
        assert view == '/pppNigeria/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/pppNigeria/show/1'
        assert controller.flash.message != null
        assert PppNigeria.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/pppNigeria/list'


        populateValidParams(params)
        def pppNigeria = new PppNigeria(params)

        assert pppNigeria.save() != null

        params.id = pppNigeria.id

        def model = controller.show()

        assert model.pppNigeriaInstance == pppNigeria
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/pppNigeria/list'


        populateValidParams(params)
        def pppNigeria = new PppNigeria(params)

        assert pppNigeria.save() != null

        params.id = pppNigeria.id

        def model = controller.edit()

        assert model.pppNigeriaInstance == pppNigeria
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/pppNigeria/list'

        response.reset()


        populateValidParams(params)
        def pppNigeria = new PppNigeria(params)

        assert pppNigeria.save() != null

        // test invalid parameters in update
        params.id = pppNigeria.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/pppNigeria/edit"
        assert model.pppNigeriaInstance != null

        pppNigeria.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/pppNigeria/show/$pppNigeria.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        pppNigeria.clearErrors()

        populateValidParams(params)
        params.id = pppNigeria.id
        params.version = -1
        controller.update()

        assert view == "/pppNigeria/edit"
        assert model.pppNigeriaInstance != null
        assert model.pppNigeriaInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/pppNigeria/list'

        response.reset()

        populateValidParams(params)
        def pppNigeria = new PppNigeria(params)

        assert pppNigeria.save() != null
        assert PppNigeria.count() == 1

        params.id = pppNigeria.id

        controller.delete()

        assert PppNigeria.count() == 0
        assert PppNigeria.get(pppNigeria.id) == null
        assert response.redirectedUrl == '/pppNigeria/list'
    }
}
