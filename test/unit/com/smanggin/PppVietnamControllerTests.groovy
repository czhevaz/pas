package com.smanggin



import org.junit.*
import grails.test.mixin.*

/**
 * PppVietnamControllerTests
 * A unit test class is used to test individual methods or blocks of code without considering the surrounding infrastructure
 */
@TestFor(PppVietnamController)
@Mock(PppVietnam)
class PppVietnamControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/pppVietnam/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.pppVietnamInstanceList.size() == 0
        assert model.pppVietnamInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.pppVietnamInstance != null
    }

    void testSave() {
        controller.save()

        assert model.pppVietnamInstance != null
        assert view == '/pppVietnam/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/pppVietnam/show/1'
        assert controller.flash.message != null
        assert PppVietnam.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/pppVietnam/list'


        populateValidParams(params)
        def pppVietnam = new PppVietnam(params)

        assert pppVietnam.save() != null

        params.id = pppVietnam.id

        def model = controller.show()

        assert model.pppVietnamInstance == pppVietnam
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/pppVietnam/list'


        populateValidParams(params)
        def pppVietnam = new PppVietnam(params)

        assert pppVietnam.save() != null

        params.id = pppVietnam.id

        def model = controller.edit()

        assert model.pppVietnamInstance == pppVietnam
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/pppVietnam/list'

        response.reset()


        populateValidParams(params)
        def pppVietnam = new PppVietnam(params)

        assert pppVietnam.save() != null

        // test invalid parameters in update
        params.id = pppVietnam.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/pppVietnam/edit"
        assert model.pppVietnamInstance != null

        pppVietnam.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/pppVietnam/show/$pppVietnam.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        pppVietnam.clearErrors()

        populateValidParams(params)
        params.id = pppVietnam.id
        params.version = -1
        controller.update()

        assert view == "/pppVietnam/edit"
        assert model.pppVietnamInstance != null
        assert model.pppVietnamInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/pppVietnam/list'

        response.reset()

        populateValidParams(params)
        def pppVietnam = new PppVietnam(params)

        assert pppVietnam.save() != null
        assert PppVietnam.count() == 1

        params.id = pppVietnam.id

        controller.delete()

        assert PppVietnam.count() == 0
        assert PppVietnam.get(pppVietnam.id) == null
        assert response.redirectedUrl == '/pppVietnam/list'
    }
}
