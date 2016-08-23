package com.smanggin



import org.junit.*
import grails.test.mixin.*

/**
 * PppMyanmarControllerTests
 * A unit test class is used to test individual methods or blocks of code without considering the surrounding infrastructure
 */
@TestFor(PppMyanmarController)
@Mock(PppMyanmar)
class PppMyanmarControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/pppMyanmar/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.pppMyanmarInstanceList.size() == 0
        assert model.pppMyanmarInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.pppMyanmarInstance != null
    }

    void testSave() {
        controller.save()

        assert model.pppMyanmarInstance != null
        assert view == '/pppMyanmar/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/pppMyanmar/show/1'
        assert controller.flash.message != null
        assert PppMyanmar.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/pppMyanmar/list'


        populateValidParams(params)
        def pppMyanmar = new PppMyanmar(params)

        assert pppMyanmar.save() != null

        params.id = pppMyanmar.id

        def model = controller.show()

        assert model.pppMyanmarInstance == pppMyanmar
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/pppMyanmar/list'


        populateValidParams(params)
        def pppMyanmar = new PppMyanmar(params)

        assert pppMyanmar.save() != null

        params.id = pppMyanmar.id

        def model = controller.edit()

        assert model.pppMyanmarInstance == pppMyanmar
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/pppMyanmar/list'

        response.reset()


        populateValidParams(params)
        def pppMyanmar = new PppMyanmar(params)

        assert pppMyanmar.save() != null

        // test invalid parameters in update
        params.id = pppMyanmar.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/pppMyanmar/edit"
        assert model.pppMyanmarInstance != null

        pppMyanmar.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/pppMyanmar/show/$pppMyanmar.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        pppMyanmar.clearErrors()

        populateValidParams(params)
        params.id = pppMyanmar.id
        params.version = -1
        controller.update()

        assert view == "/pppMyanmar/edit"
        assert model.pppMyanmarInstance != null
        assert model.pppMyanmarInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/pppMyanmar/list'

        response.reset()

        populateValidParams(params)
        def pppMyanmar = new PppMyanmar(params)

        assert pppMyanmar.save() != null
        assert PppMyanmar.count() == 1

        params.id = pppMyanmar.id

        controller.delete()

        assert PppMyanmar.count() == 0
        assert PppMyanmar.get(pppMyanmar.id) == null
        assert response.redirectedUrl == '/pppMyanmar/list'
    }
}
