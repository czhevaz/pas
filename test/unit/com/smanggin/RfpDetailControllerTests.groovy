package com.smanggin



import org.junit.*
import grails.test.mixin.*

/**
 * RfpDetailControllerTests
 * A unit test class is used to test individual methods or blocks of code without considering the surrounding infrastructure
 */
@TestFor(RfpDetailController)
@Mock(RfpDetail)
class RfpDetailControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/rfpDetail/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.rfpDetailInstanceList.size() == 0
        assert model.rfpDetailInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.rfpDetailInstance != null
    }

    void testSave() {
        controller.save()

        assert model.rfpDetailInstance != null
        assert view == '/rfpDetail/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/rfpDetail/show/1'
        assert controller.flash.message != null
        assert RfpDetail.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/rfpDetail/list'


        populateValidParams(params)
        def rfpDetail = new RfpDetail(params)

        assert rfpDetail.save() != null

        params.id = rfpDetail.id

        def model = controller.show()

        assert model.rfpDetailInstance == rfpDetail
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/rfpDetail/list'


        populateValidParams(params)
        def rfpDetail = new RfpDetail(params)

        assert rfpDetail.save() != null

        params.id = rfpDetail.id

        def model = controller.edit()

        assert model.rfpDetailInstance == rfpDetail
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/rfpDetail/list'

        response.reset()


        populateValidParams(params)
        def rfpDetail = new RfpDetail(params)

        assert rfpDetail.save() != null

        // test invalid parameters in update
        params.id = rfpDetail.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/rfpDetail/edit"
        assert model.rfpDetailInstance != null

        rfpDetail.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/rfpDetail/show/$rfpDetail.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        rfpDetail.clearErrors()

        populateValidParams(params)
        params.id = rfpDetail.id
        params.version = -1
        controller.update()

        assert view == "/rfpDetail/edit"
        assert model.rfpDetailInstance != null
        assert model.rfpDetailInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/rfpDetail/list'

        response.reset()

        populateValidParams(params)
        def rfpDetail = new RfpDetail(params)

        assert rfpDetail.save() != null
        assert RfpDetail.count() == 1

        params.id = rfpDetail.id

        controller.delete()

        assert RfpDetail.count() == 0
        assert RfpDetail.get(rfpDetail.id) == null
        assert response.redirectedUrl == '/rfpDetail/list'
    }
}
