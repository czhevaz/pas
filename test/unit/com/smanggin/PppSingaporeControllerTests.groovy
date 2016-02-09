package com.smanggin



import org.junit.*
import grails.test.mixin.*

/**
 * PppSingaporeControllerTests
 * A unit test class is used to test individual methods or blocks of code without considering the surrounding infrastructure
 */
@TestFor(PppSingaporeController)
@Mock(PppSingapore)
class PppSingaporeControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/pppSingapore/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.pppSingaporeInstanceList.size() == 0
        assert model.pppSingaporeInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.pppSingaporeInstance != null
    }

    void testSave() {
        controller.save()

        assert model.pppSingaporeInstance != null
        assert view == '/pppSingapore/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/pppSingapore/show/1'
        assert controller.flash.message != null
        assert PppSingapore.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/pppSingapore/list'


        populateValidParams(params)
        def pppSingapore = new PppSingapore(params)

        assert pppSingapore.save() != null

        params.id = pppSingapore.id

        def model = controller.show()

        assert model.pppSingaporeInstance == pppSingapore
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/pppSingapore/list'


        populateValidParams(params)
        def pppSingapore = new PppSingapore(params)

        assert pppSingapore.save() != null

        params.id = pppSingapore.id

        def model = controller.edit()

        assert model.pppSingaporeInstance == pppSingapore
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/pppSingapore/list'

        response.reset()


        populateValidParams(params)
        def pppSingapore = new PppSingapore(params)

        assert pppSingapore.save() != null

        // test invalid parameters in update
        params.id = pppSingapore.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/pppSingapore/edit"
        assert model.pppSingaporeInstance != null

        pppSingapore.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/pppSingapore/show/$pppSingapore.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        pppSingapore.clearErrors()

        populateValidParams(params)
        params.id = pppSingapore.id
        params.version = -1
        controller.update()

        assert view == "/pppSingapore/edit"
        assert model.pppSingaporeInstance != null
        assert model.pppSingaporeInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/pppSingapore/list'

        response.reset()

        populateValidParams(params)
        def pppSingapore = new PppSingapore(params)

        assert pppSingapore.save() != null
        assert PppSingapore.count() == 1

        params.id = pppSingapore.id

        controller.delete()

        assert PppSingapore.count() == 0
        assert PppSingapore.get(pppSingapore.id) == null
        assert response.redirectedUrl == '/pppSingapore/list'
    }
}
