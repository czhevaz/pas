package com.smanggin



import org.junit.*
import grails.test.mixin.*

/**
 * PppSrilankaControllerTests
 * A unit test class is used to test individual methods or blocks of code without considering the surrounding infrastructure
 */
@TestFor(PppSrilankaController)
@Mock(PppSrilanka)
class PppSrilankaControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/pppSrilanka/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.pppSrilankaInstanceList.size() == 0
        assert model.pppSrilankaInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.pppSrilankaInstance != null
    }

    void testSave() {
        controller.save()

        assert model.pppSrilankaInstance != null
        assert view == '/pppSrilanka/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/pppSrilanka/show/1'
        assert controller.flash.message != null
        assert PppSrilanka.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/pppSrilanka/list'


        populateValidParams(params)
        def pppSrilanka = new PppSrilanka(params)

        assert pppSrilanka.save() != null

        params.id = pppSrilanka.id

        def model = controller.show()

        assert model.pppSrilankaInstance == pppSrilanka
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/pppSrilanka/list'


        populateValidParams(params)
        def pppSrilanka = new PppSrilanka(params)

        assert pppSrilanka.save() != null

        params.id = pppSrilanka.id

        def model = controller.edit()

        assert model.pppSrilankaInstance == pppSrilanka
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/pppSrilanka/list'

        response.reset()


        populateValidParams(params)
        def pppSrilanka = new PppSrilanka(params)

        assert pppSrilanka.save() != null

        // test invalid parameters in update
        params.id = pppSrilanka.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/pppSrilanka/edit"
        assert model.pppSrilankaInstance != null

        pppSrilanka.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/pppSrilanka/show/$pppSrilanka.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        pppSrilanka.clearErrors()

        populateValidParams(params)
        params.id = pppSrilanka.id
        params.version = -1
        controller.update()

        assert view == "/pppSrilanka/edit"
        assert model.pppSrilankaInstance != null
        assert model.pppSrilankaInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/pppSrilanka/list'

        response.reset()

        populateValidParams(params)
        def pppSrilanka = new PppSrilanka(params)

        assert pppSrilanka.save() != null
        assert PppSrilanka.count() == 1

        params.id = pppSrilanka.id

        controller.delete()

        assert PppSrilanka.count() == 0
        assert PppSrilanka.get(pppSrilanka.id) == null
        assert response.redirectedUrl == '/pppSrilanka/list'
    }
}
