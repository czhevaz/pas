package com.smanggin



import org.junit.*
import grails.test.mixin.*

/**
 * PurchaseOrderDetailControllerTests
 * A unit test class is used to test individual methods or blocks of code without considering the surrounding infrastructure
 */
@TestFor(PurchaseOrderDetailController)
@Mock(PurchaseOrderDetail)
class PurchaseOrderDetailControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/purchaseOrderDetail/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.purchaseOrderDetailInstanceList.size() == 0
        assert model.purchaseOrderDetailInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.purchaseOrderDetailInstance != null
    }

    void testSave() {
        controller.save()

        assert model.purchaseOrderDetailInstance != null
        assert view == '/purchaseOrderDetail/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/purchaseOrderDetail/show/1'
        assert controller.flash.message != null
        assert PurchaseOrderDetail.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/purchaseOrderDetail/list'


        populateValidParams(params)
        def purchaseOrderDetail = new PurchaseOrderDetail(params)

        assert purchaseOrderDetail.save() != null

        params.id = purchaseOrderDetail.id

        def model = controller.show()

        assert model.purchaseOrderDetailInstance == purchaseOrderDetail
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/purchaseOrderDetail/list'


        populateValidParams(params)
        def purchaseOrderDetail = new PurchaseOrderDetail(params)

        assert purchaseOrderDetail.save() != null

        params.id = purchaseOrderDetail.id

        def model = controller.edit()

        assert model.purchaseOrderDetailInstance == purchaseOrderDetail
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/purchaseOrderDetail/list'

        response.reset()


        populateValidParams(params)
        def purchaseOrderDetail = new PurchaseOrderDetail(params)

        assert purchaseOrderDetail.save() != null

        // test invalid parameters in update
        params.id = purchaseOrderDetail.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/purchaseOrderDetail/edit"
        assert model.purchaseOrderDetailInstance != null

        purchaseOrderDetail.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/purchaseOrderDetail/show/$purchaseOrderDetail.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        purchaseOrderDetail.clearErrors()

        populateValidParams(params)
        params.id = purchaseOrderDetail.id
        params.version = -1
        controller.update()

        assert view == "/purchaseOrderDetail/edit"
        assert model.purchaseOrderDetailInstance != null
        assert model.purchaseOrderDetailInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/purchaseOrderDetail/list'

        response.reset()

        populateValidParams(params)
        def purchaseOrderDetail = new PurchaseOrderDetail(params)

        assert purchaseOrderDetail.save() != null
        assert PurchaseOrderDetail.count() == 1

        params.id = purchaseOrderDetail.id

        controller.delete()

        assert PurchaseOrderDetail.count() == 0
        assert PurchaseOrderDetail.get(purchaseOrderDetail.id) == null
        assert response.redirectedUrl == '/purchaseOrderDetail/list'
    }
}
