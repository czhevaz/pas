package com.smanggin



import org.junit.*
import grails.test.mixin.*

/**
 * ApprovalDetailControllerTests
 * A unit test class is used to test individual methods or blocks of code without considering the surrounding infrastructure
 */
@TestFor(ApprovalDetailController)
@Mock(ApprovalDetail)
class ApprovalDetailControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/approvalDetail/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.approvalDetailInstanceList.size() == 0
        assert model.approvalDetailInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.approvalDetailInstance != null
    }

    void testSave() {
        controller.save()

        assert model.approvalDetailInstance != null
        assert view == '/approvalDetail/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/approvalDetail/show/1'
        assert controller.flash.message != null
        assert ApprovalDetail.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/approvalDetail/list'


        populateValidParams(params)
        def approvalDetail = new ApprovalDetail(params)

        assert approvalDetail.save() != null

        params.id = approvalDetail.id

        def model = controller.show()

        assert model.approvalDetailInstance == approvalDetail
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/approvalDetail/list'


        populateValidParams(params)
        def approvalDetail = new ApprovalDetail(params)

        assert approvalDetail.save() != null

        params.id = approvalDetail.id

        def model = controller.edit()

        assert model.approvalDetailInstance == approvalDetail
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/approvalDetail/list'

        response.reset()


        populateValidParams(params)
        def approvalDetail = new ApprovalDetail(params)

        assert approvalDetail.save() != null

        // test invalid parameters in update
        params.id = approvalDetail.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/approvalDetail/edit"
        assert model.approvalDetailInstance != null

        approvalDetail.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/approvalDetail/show/$approvalDetail.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        approvalDetail.clearErrors()

        populateValidParams(params)
        params.id = approvalDetail.id
        params.version = -1
        controller.update()

        assert view == "/approvalDetail/edit"
        assert model.approvalDetailInstance != null
        assert model.approvalDetailInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/approvalDetail/list'

        response.reset()

        populateValidParams(params)
        def approvalDetail = new ApprovalDetail(params)

        assert approvalDetail.save() != null
        assert ApprovalDetail.count() == 1

        params.id = approvalDetail.id

        controller.delete()

        assert ApprovalDetail.count() == 0
        assert ApprovalDetail.get(approvalDetail.id) == null
        assert response.redirectedUrl == '/approvalDetail/list'
    }
}
