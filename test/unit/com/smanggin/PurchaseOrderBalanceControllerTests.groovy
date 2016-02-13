package com.smanggin



import org.junit.*
import grails.test.mixin.*

/**
 * PurchaseOrderBalanceControllerTests
 * A unit test class is used to test individual methods or blocks of code without considering the surrounding infrastructure
 */
@TestFor(PurchaseOrderBalanceController)
@Mock(PurchaseOrderBalance)
class PurchaseOrderBalanceControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/purchaseOrderBalance/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.purchaseOrderBalanceInstanceList.size() == 0
        assert model.purchaseOrderBalanceInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.purchaseOrderBalanceInstance != null
    }

    void testSave() {
        controller.save()

        assert model.purchaseOrderBalanceInstance != null
        assert view == '/purchaseOrderBalance/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/purchaseOrderBalance/show/1'
        assert controller.flash.message != null
        assert PurchaseOrderBalance.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/purchaseOrderBalance/list'


        populateValidParams(params)
        def purchaseOrderBalance = new PurchaseOrderBalance(params)

        assert purchaseOrderBalance.save() != null

        params.id = purchaseOrderBalance.id

        def model = controller.show()

        assert model.purchaseOrderBalanceInstance == purchaseOrderBalance
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/purchaseOrderBalance/list'


        populateValidParams(params)
        def purchaseOrderBalance = new PurchaseOrderBalance(params)

        assert purchaseOrderBalance.save() != null

        params.id = purchaseOrderBalance.id

        def model = controller.edit()

        assert model.purchaseOrderBalanceInstance == purchaseOrderBalance
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/purchaseOrderBalance/list'

        response.reset()


        populateValidParams(params)
        def purchaseOrderBalance = new PurchaseOrderBalance(params)

        assert purchaseOrderBalance.save() != null

        // test invalid parameters in update
        params.id = purchaseOrderBalance.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/purchaseOrderBalance/edit"
        assert model.purchaseOrderBalanceInstance != null

        purchaseOrderBalance.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/purchaseOrderBalance/show/$purchaseOrderBalance.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        purchaseOrderBalance.clearErrors()

        populateValidParams(params)
        params.id = purchaseOrderBalance.id
        params.version = -1
        controller.update()

        assert view == "/purchaseOrderBalance/edit"
        assert model.purchaseOrderBalanceInstance != null
        assert model.purchaseOrderBalanceInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/purchaseOrderBalance/list'

        response.reset()

        populateValidParams(params)
        def purchaseOrderBalance = new PurchaseOrderBalance(params)

        assert purchaseOrderBalance.save() != null
        assert PurchaseOrderBalance.count() == 1

        params.id = purchaseOrderBalance.id

        controller.delete()

        assert PurchaseOrderBalance.count() == 0
        assert PurchaseOrderBalance.get(purchaseOrderBalance.id) == null
        assert response.redirectedUrl == '/purchaseOrderBalance/list'
    }
}
