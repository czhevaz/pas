package com.smanggin



import org.junit.*
import grails.test.mixin.*

/**
 * PppMalaysiaControllerTests
 * A unit test class is used to test individual methods or blocks of code without considering the surrounding infrastructure
 */
@TestFor(PppMalaysiaController)
@Mock(PppMalaysia)
class PppMalaysiaControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/pppMalaysia/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.pppMalaysiaInstanceList.size() == 0
        assert model.pppMalaysiaInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.pppMalaysiaInstance != null
    }

    void testSave() {
        controller.save()

        assert model.pppMalaysiaInstance != null
        assert view == '/pppMalaysia/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/pppMalaysia/show/1'
        assert controller.flash.message != null
        assert PppMalaysia.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/pppMalaysia/list'


        populateValidParams(params)
        def pppMalaysia = new PppMalaysia(params)

        assert pppMalaysia.save() != null

        params.id = pppMalaysia.id

        def model = controller.show()

        assert model.pppMalaysiaInstance == pppMalaysia
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/pppMalaysia/list'


        populateValidParams(params)
        def pppMalaysia = new PppMalaysia(params)

        assert pppMalaysia.save() != null

        params.id = pppMalaysia.id

        def model = controller.edit()

        assert model.pppMalaysiaInstance == pppMalaysia
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/pppMalaysia/list'

        response.reset()


        populateValidParams(params)
        def pppMalaysia = new PppMalaysia(params)

        assert pppMalaysia.save() != null

        // test invalid parameters in update
        params.id = pppMalaysia.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/pppMalaysia/edit"
        assert model.pppMalaysiaInstance != null

        pppMalaysia.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/pppMalaysia/show/$pppMalaysia.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        pppMalaysia.clearErrors()

        populateValidParams(params)
        params.id = pppMalaysia.id
        params.version = -1
        controller.update()

        assert view == "/pppMalaysia/edit"
        assert model.pppMalaysiaInstance != null
        assert model.pppMalaysiaInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/pppMalaysia/list'

        response.reset()

        populateValidParams(params)
        def pppMalaysia = new PppMalaysia(params)

        assert pppMalaysia.save() != null
        assert PppMalaysia.count() == 1

        params.id = pppMalaysia.id

        controller.delete()

        assert PppMalaysia.count() == 0
        assert PppMalaysia.get(pppMalaysia.id) == null
        assert response.redirectedUrl == '/pppMalaysia/list'
    }
}
