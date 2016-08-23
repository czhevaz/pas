package com.smanggin



import org.junit.*
import grails.test.mixin.*

/**
 * PurchaseOrderCommentControllerTests
 * A unit test class is used to test individual methods or blocks of code without considering the surrounding infrastructure
 */
@TestFor(PurchaseOrderCommentController)
@Mock(PurchaseOrderComment)
class PurchaseOrderCommentControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/purchaseOrderComment/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.purchaseOrderCommentInstanceList.size() == 0
        assert model.purchaseOrderCommentInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.purchaseOrderCommentInstance != null
    }

    void testSave() {
        controller.save()

        assert model.purchaseOrderCommentInstance != null
        assert view == '/purchaseOrderComment/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/purchaseOrderComment/show/1'
        assert controller.flash.message != null
        assert PurchaseOrderComment.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/purchaseOrderComment/list'


        populateValidParams(params)
        def purchaseOrderComment = new PurchaseOrderComment(params)

        assert purchaseOrderComment.save() != null

        params.id = purchaseOrderComment.id

        def model = controller.show()

        assert model.purchaseOrderCommentInstance == purchaseOrderComment
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/purchaseOrderComment/list'


        populateValidParams(params)
        def purchaseOrderComment = new PurchaseOrderComment(params)

        assert purchaseOrderComment.save() != null

        params.id = purchaseOrderComment.id

        def model = controller.edit()

        assert model.purchaseOrderCommentInstance == purchaseOrderComment
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/purchaseOrderComment/list'

        response.reset()


        populateValidParams(params)
        def purchaseOrderComment = new PurchaseOrderComment(params)

        assert purchaseOrderComment.save() != null

        // test invalid parameters in update
        params.id = purchaseOrderComment.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/purchaseOrderComment/edit"
        assert model.purchaseOrderCommentInstance != null

        purchaseOrderComment.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/purchaseOrderComment/show/$purchaseOrderComment.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        purchaseOrderComment.clearErrors()

        populateValidParams(params)
        params.id = purchaseOrderComment.id
        params.version = -1
        controller.update()

        assert view == "/purchaseOrderComment/edit"
        assert model.purchaseOrderCommentInstance != null
        assert model.purchaseOrderCommentInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/purchaseOrderComment/list'

        response.reset()

        populateValidParams(params)
        def purchaseOrderComment = new PurchaseOrderComment(params)

        assert purchaseOrderComment.save() != null
        assert PurchaseOrderComment.count() == 1

        params.id = purchaseOrderComment.id

        controller.delete()

        assert PurchaseOrderComment.count() == 0
        assert PurchaseOrderComment.get(purchaseOrderComment.id) == null
        assert response.redirectedUrl == '/purchaseOrderComment/list'
    }
}
