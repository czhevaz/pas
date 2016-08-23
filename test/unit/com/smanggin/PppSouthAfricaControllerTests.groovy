package com.smanggin



import org.junit.*
import grails.test.mixin.*

/**
 * PppSouthAfricaControllerTests
 * A unit test class is used to test individual methods or blocks of code without considering the surrounding infrastructure
 */
@TestFor(PppSouthAfricaController)
@Mock(PppSouthAfrica)
class PppSouthAfricaControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/pppSouthAfrica/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.pppSouthAfricaInstanceList.size() == 0
        assert model.pppSouthAfricaInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.pppSouthAfricaInstance != null
    }

    void testSave() {
        controller.save()

        assert model.pppSouthAfricaInstance != null
        assert view == '/pppSouthAfrica/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/pppSouthAfrica/show/1'
        assert controller.flash.message != null
        assert PppSouthAfrica.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/pppSouthAfrica/list'


        populateValidParams(params)
        def pppSouthAfrica = new PppSouthAfrica(params)

        assert pppSouthAfrica.save() != null

        params.id = pppSouthAfrica.id

        def model = controller.show()

        assert model.pppSouthAfricaInstance == pppSouthAfrica
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/pppSouthAfrica/list'


        populateValidParams(params)
        def pppSouthAfrica = new PppSouthAfrica(params)

        assert pppSouthAfrica.save() != null

        params.id = pppSouthAfrica.id

        def model = controller.edit()

        assert model.pppSouthAfricaInstance == pppSouthAfrica
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/pppSouthAfrica/list'

        response.reset()


        populateValidParams(params)
        def pppSouthAfrica = new PppSouthAfrica(params)

        assert pppSouthAfrica.save() != null

        // test invalid parameters in update
        params.id = pppSouthAfrica.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/pppSouthAfrica/edit"
        assert model.pppSouthAfricaInstance != null

        pppSouthAfrica.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/pppSouthAfrica/show/$pppSouthAfrica.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        pppSouthAfrica.clearErrors()

        populateValidParams(params)
        params.id = pppSouthAfrica.id
        params.version = -1
        controller.update()

        assert view == "/pppSouthAfrica/edit"
        assert model.pppSouthAfricaInstance != null
        assert model.pppSouthAfricaInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/pppSouthAfrica/list'

        response.reset()

        populateValidParams(params)
        def pppSouthAfrica = new PppSouthAfrica(params)

        assert pppSouthAfrica.save() != null
        assert PppSouthAfrica.count() == 1

        params.id = pppSouthAfrica.id

        controller.delete()

        assert PppSouthAfrica.count() == 0
        assert PppSouthAfrica.get(pppSouthAfrica.id) == null
        assert response.redirectedUrl == '/pppSouthAfrica/list'
    }
}
