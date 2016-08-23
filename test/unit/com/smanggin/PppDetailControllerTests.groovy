package com.smanggin



import org.junit.*
import grails.test.mixin.*

/**
 * PppDetailControllerTests
 * A unit test class is used to test individual methods or blocks of code without considering the surrounding infrastructure
 */
@TestFor(PppDetailController)
@Mock(PppDetail)
class PppDetailControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/pppDetail/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.pppDetailInstanceList.size() == 0
        assert model.pppDetailInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.pppDetailInstance != null
    }

    void testSave() {
        controller.save()

        assert model.pppDetailInstance != null
        assert view == '/pppDetail/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/pppDetail/show/1'
        assert controller.flash.message != null
        assert PppDetail.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/pppDetail/list'


        populateValidParams(params)
        def pppDetail = new PppDetail(params)

        assert pppDetail.save() != null

        params.id = pppDetail.id

        def model = controller.show()

        assert model.pppDetailInstance == pppDetail
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/pppDetail/list'


        populateValidParams(params)
        def pppDetail = new PppDetail(params)

        assert pppDetail.save() != null

        params.id = pppDetail.id

        def model = controller.edit()

        assert model.pppDetailInstance == pppDetail
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/pppDetail/list'

        response.reset()


        populateValidParams(params)
        def pppDetail = new PppDetail(params)

        assert pppDetail.save() != null

        // test invalid parameters in update
        params.id = pppDetail.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/pppDetail/edit"
        assert model.pppDetailInstance != null

        pppDetail.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/pppDetail/show/$pppDetail.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        pppDetail.clearErrors()

        populateValidParams(params)
        params.id = pppDetail.id
        params.version = -1
        controller.update()

        assert view == "/pppDetail/edit"
        assert model.pppDetailInstance != null
        assert model.pppDetailInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/pppDetail/list'

        response.reset()

        populateValidParams(params)
        def pppDetail = new PppDetail(params)

        assert pppDetail.save() != null
        assert PppDetail.count() == 1

        params.id = pppDetail.id

        controller.delete()

        assert PppDetail.count() == 0
        assert PppDetail.get(pppDetail.id) == null
        assert response.redirectedUrl == '/pppDetail/list'
    }
}
