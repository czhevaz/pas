package com.smanggin



import org.junit.*
import grails.test.mixin.*

/**
 * PurchaseOrderWriteOffControllerTests
 * A unit test class is used to test individual methods or blocks of code without considering the surrounding infrastructure
 */
@TestFor(PurchaseOrderWriteOffController)
@Mock(PurchaseOrderWriteOff)
class PurchaseOrderWriteOffControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/purchaseOrderWriteOff/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.purchaseOrderWriteOffInstanceList.size() == 0
        assert model.purchaseOrderWriteOffInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.purchaseOrderWriteOffInstance != null
    }

    void testSave() {
        controller.save()

        assert model.purchaseOrderWriteOffInstance != null
        assert view == '/purchaseOrderWriteOff/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/purchaseOrderWriteOff/show/1'
        assert controller.flash.message != null
        assert PurchaseOrderWriteOff.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/purchaseOrderWriteOff/list'


        populateValidParams(params)
        def purchaseOrderWriteOff = new PurchaseOrderWriteOff(params)

        assert purchaseOrderWriteOff.save() != null

        params.id = purchaseOrderWriteOff.id

        def model = controller.show()

        assert model.purchaseOrderWriteOffInstance == purchaseOrderWriteOff
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/purchaseOrderWriteOff/list'


        populateValidParams(params)
        def purchaseOrderWriteOff = new PurchaseOrderWriteOff(params)

        assert purchaseOrderWriteOff.save() != null

        params.id = purchaseOrderWriteOff.id

        def model = controller.edit()

        assert model.purchaseOrderWriteOffInstance == purchaseOrderWriteOff
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/purchaseOrderWriteOff/list'

        response.reset()


        populateValidParams(params)
        def purchaseOrderWriteOff = new PurchaseOrderWriteOff(params)

        assert purchaseOrderWriteOff.save() != null

        // test invalid parameters in update
        params.id = purchaseOrderWriteOff.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/purchaseOrderWriteOff/edit"
        assert model.purchaseOrderWriteOffInstance != null

        purchaseOrderWriteOff.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/purchaseOrderWriteOff/show/$purchaseOrderWriteOff.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        purchaseOrderWriteOff.clearErrors()

        populateValidParams(params)
        params.id = purchaseOrderWriteOff.id
        params.version = -1
        controller.update()

        assert view == "/purchaseOrderWriteOff/edit"
        assert model.purchaseOrderWriteOffInstance != null
        assert model.purchaseOrderWriteOffInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/purchaseOrderWriteOff/list'

        response.reset()

        populateValidParams(params)
        def purchaseOrderWriteOff = new PurchaseOrderWriteOff(params)

        assert purchaseOrderWriteOff.save() != null
        assert PurchaseOrderWriteOff.count() == 1

        params.id = purchaseOrderWriteOff.id

        controller.delete()

        assert PurchaseOrderWriteOff.count() == 0
        assert PurchaseOrderWriteOff.get(purchaseOrderWriteOff.id) == null
        assert response.redirectedUrl == '/purchaseOrderWriteOff/list'
    }
}
