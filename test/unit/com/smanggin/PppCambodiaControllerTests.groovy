package com.smanggin



import org.junit.*
import grails.test.mixin.*

/**
 * PppCambodiaControllerTests
 * A unit test class is used to test individual methods or blocks of code without considering the surrounding infrastructure
 */
@TestFor(PppCambodiaController)
@Mock(PppCambodia)
class PppCambodiaControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/pppCambodia/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.pppCambodiaInstanceList.size() == 0
        assert model.pppCambodiaInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.pppCambodiaInstance != null
    }

    void testSave() {
        controller.save()

        assert model.pppCambodiaInstance != null
        assert view == '/pppCambodia/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/pppCambodia/show/1'
        assert controller.flash.message != null
        assert PppCambodia.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/pppCambodia/list'


        populateValidParams(params)
        def pppCambodia = new PppCambodia(params)

        assert pppCambodia.save() != null

        params.id = pppCambodia.id

        def model = controller.show()

        assert model.pppCambodiaInstance == pppCambodia
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/pppCambodia/list'


        populateValidParams(params)
        def pppCambodia = new PppCambodia(params)

        assert pppCambodia.save() != null

        params.id = pppCambodia.id

        def model = controller.edit()

        assert model.pppCambodiaInstance == pppCambodia
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/pppCambodia/list'

        response.reset()


        populateValidParams(params)
        def pppCambodia = new PppCambodia(params)

        assert pppCambodia.save() != null

        // test invalid parameters in update
        params.id = pppCambodia.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/pppCambodia/edit"
        assert model.pppCambodiaInstance != null

        pppCambodia.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/pppCambodia/show/$pppCambodia.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        pppCambodia.clearErrors()

        populateValidParams(params)
        params.id = pppCambodia.id
        params.version = -1
        controller.update()

        assert view == "/pppCambodia/edit"
        assert model.pppCambodiaInstance != null
        assert model.pppCambodiaInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/pppCambodia/list'

        response.reset()

        populateValidParams(params)
        def pppCambodia = new PppCambodia(params)

        assert pppCambodia.save() != null
        assert PppCambodia.count() == 1

        params.id = pppCambodia.id

        controller.delete()

        assert PppCambodia.count() == 0
        assert PppCambodia.get(pppCambodia.id) == null
        assert response.redirectedUrl == '/pppCambodia/list'
    }
}
