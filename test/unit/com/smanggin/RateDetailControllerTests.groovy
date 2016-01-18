package com.smanggin



import org.junit.*
import grails.test.mixin.*

/**
 * RateDetailControllerTests
 * A unit test class is used to test individual methods or blocks of code without considering the surrounding infrastructure
 */
@TestFor(RateDetailController)
@Mock(RateDetail)
class RateDetailControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/rateDetail/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.rateDetailInstanceList.size() == 0
        assert model.rateDetailInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.rateDetailInstance != null
    }

    void testSave() {
        controller.save()

        assert model.rateDetailInstance != null
        assert view == '/rateDetail/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/rateDetail/show/1'
        assert controller.flash.message != null
        assert RateDetail.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/rateDetail/list'


        populateValidParams(params)
        def rateDetail = new RateDetail(params)

        assert rateDetail.save() != null

        params.id = rateDetail.id

        def model = controller.show()

        assert model.rateDetailInstance == rateDetail
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/rateDetail/list'


        populateValidParams(params)
        def rateDetail = new RateDetail(params)

        assert rateDetail.save() != null

        params.id = rateDetail.id

        def model = controller.edit()

        assert model.rateDetailInstance == rateDetail
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/rateDetail/list'

        response.reset()


        populateValidParams(params)
        def rateDetail = new RateDetail(params)

        assert rateDetail.save() != null

        // test invalid parameters in update
        params.id = rateDetail.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/rateDetail/edit"
        assert model.rateDetailInstance != null

        rateDetail.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/rateDetail/show/$rateDetail.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        rateDetail.clearErrors()

        populateValidParams(params)
        params.id = rateDetail.id
        params.version = -1
        controller.update()

        assert view == "/rateDetail/edit"
        assert model.rateDetailInstance != null
        assert model.rateDetailInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/rateDetail/list'

        response.reset()

        populateValidParams(params)
        def rateDetail = new RateDetail(params)

        assert rateDetail.save() != null
        assert RateDetail.count() == 1

        params.id = rateDetail.id

        controller.delete()

        assert RateDetail.count() == 0
        assert RateDetail.get(rateDetail.id) == null
        assert response.redirectedUrl == '/rateDetail/list'
    }
}
