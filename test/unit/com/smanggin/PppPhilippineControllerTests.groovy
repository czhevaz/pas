package com.smanggin



import org.junit.*
import grails.test.mixin.*

/**
 * PppPhilippineControllerTests
 * A unit test class is used to test individual methods or blocks of code without considering the surrounding infrastructure
 */
@TestFor(PppPhilippineController)
@Mock(PppPhilippine)
class PppPhilippineControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/pppPhilippine/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.pppPhilippineInstanceList.size() == 0
        assert model.pppPhilippineInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.pppPhilippineInstance != null
    }

    void testSave() {
        controller.save()

        assert model.pppPhilippineInstance != null
        assert view == '/pppPhilippine/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/pppPhilippine/show/1'
        assert controller.flash.message != null
        assert PppPhilippine.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/pppPhilippine/list'


        populateValidParams(params)
        def pppPhilippine = new PppPhilippine(params)

        assert pppPhilippine.save() != null

        params.id = pppPhilippine.id

        def model = controller.show()

        assert model.pppPhilippineInstance == pppPhilippine
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/pppPhilippine/list'


        populateValidParams(params)
        def pppPhilippine = new PppPhilippine(params)

        assert pppPhilippine.save() != null

        params.id = pppPhilippine.id

        def model = controller.edit()

        assert model.pppPhilippineInstance == pppPhilippine
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/pppPhilippine/list'

        response.reset()


        populateValidParams(params)
        def pppPhilippine = new PppPhilippine(params)

        assert pppPhilippine.save() != null

        // test invalid parameters in update
        params.id = pppPhilippine.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/pppPhilippine/edit"
        assert model.pppPhilippineInstance != null

        pppPhilippine.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/pppPhilippine/show/$pppPhilippine.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        pppPhilippine.clearErrors()

        populateValidParams(params)
        params.id = pppPhilippine.id
        params.version = -1
        controller.update()

        assert view == "/pppPhilippine/edit"
        assert model.pppPhilippineInstance != null
        assert model.pppPhilippineInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/pppPhilippine/list'

        response.reset()

        populateValidParams(params)
        def pppPhilippine = new PppPhilippine(params)

        assert pppPhilippine.save() != null
        assert PppPhilippine.count() == 1

        params.id = pppPhilippine.id

        controller.delete()

        assert PppPhilippine.count() == 0
        assert PppPhilippine.get(pppPhilippine.id) == null
        assert response.redirectedUrl == '/pppPhilippine/list'
    }
}
