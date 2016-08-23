package com.smanggin



import org.junit.*
import grails.test.mixin.*

/**
 * RfpControllerTests
 * A unit test class is used to test individual methods or blocks of code without considering the surrounding infrastructure
 */
@TestFor(RfpController)
@Mock(Rfp)
class RfpControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/rfp/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.rfpInstanceList.size() == 0
        assert model.rfpInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.rfpInstance != null
    }

    void testSave() {
        controller.save()

        assert model.rfpInstance != null
        assert view == '/rfp/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/rfp/show/1'
        assert controller.flash.message != null
        assert Rfp.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/rfp/list'


        populateValidParams(params)
        def rfp = new Rfp(params)

        assert rfp.save() != null

        params.id = rfp.id

        def model = controller.show()

        assert model.rfpInstance == rfp
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/rfp/list'


        populateValidParams(params)
        def rfp = new Rfp(params)

        assert rfp.save() != null

        params.id = rfp.id

        def model = controller.edit()

        assert model.rfpInstance == rfp
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/rfp/list'

        response.reset()


        populateValidParams(params)
        def rfp = new Rfp(params)

        assert rfp.save() != null

        // test invalid parameters in update
        params.id = rfp.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/rfp/edit"
        assert model.rfpInstance != null

        rfp.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/rfp/show/$rfp.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        rfp.clearErrors()

        populateValidParams(params)
        params.id = rfp.id
        params.version = -1
        controller.update()

        assert view == "/rfp/edit"
        assert model.rfpInstance != null
        assert model.rfpInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/rfp/list'

        response.reset()

        populateValidParams(params)
        def rfp = new Rfp(params)

        assert rfp.save() != null
        assert Rfp.count() == 1

        params.id = rfp.id

        controller.delete()

        assert Rfp.count() == 0
        assert Rfp.get(rfp.id) == null
        assert response.redirectedUrl == '/rfp/list'
    }
}
