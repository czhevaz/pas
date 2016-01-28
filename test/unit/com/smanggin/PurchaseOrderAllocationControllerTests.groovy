package com.smanggin



import org.junit.*
import grails.test.mixin.*

/**
 * PurchaseOrderAllocationControllerTests
 * A unit test class is used to test individual methods or blocks of code without considering the surrounding infrastructure
 */
@TestFor(PurchaseOrderAllocationController)
@Mock(PurchaseOrderAllocation)
class PurchaseOrderAllocationControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/purchaseOrderAllocation/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.purchaseOrderAllocationInstanceList.size() == 0
        assert model.purchaseOrderAllocationInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.purchaseOrderAllocationInstance != null
    }

    void testSave() {
        controller.save()

        assert model.purchaseOrderAllocationInstance != null
        assert view == '/purchaseOrderAllocation/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/purchaseOrderAllocation/show/1'
        assert controller.flash.message != null
        assert PurchaseOrderAllocation.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/purchaseOrderAllocation/list'


        populateValidParams(params)
        def purchaseOrderAllocation = new PurchaseOrderAllocation(params)

        assert purchaseOrderAllocation.save() != null

        params.id = purchaseOrderAllocation.id

        def model = controller.show()

        assert model.purchaseOrderAllocationInstance == purchaseOrderAllocation
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/purchaseOrderAllocation/list'


        populateValidParams(params)
        def purchaseOrderAllocation = new PurchaseOrderAllocation(params)

        assert purchaseOrderAllocation.save() != null

        params.id = purchaseOrderAllocation.id

        def model = controller.edit()

        assert model.purchaseOrderAllocationInstance == purchaseOrderAllocation
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/purchaseOrderAllocation/list'

        response.reset()


        populateValidParams(params)
        def purchaseOrderAllocation = new PurchaseOrderAllocation(params)

        assert purchaseOrderAllocation.save() != null

        // test invalid parameters in update
        params.id = purchaseOrderAllocation.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/purchaseOrderAllocation/edit"
        assert model.purchaseOrderAllocationInstance != null

        purchaseOrderAllocation.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/purchaseOrderAllocation/show/$purchaseOrderAllocation.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        purchaseOrderAllocation.clearErrors()

        populateValidParams(params)
        params.id = purchaseOrderAllocation.id
        params.version = -1
        controller.update()

        assert view == "/purchaseOrderAllocation/edit"
        assert model.purchaseOrderAllocationInstance != null
        assert model.purchaseOrderAllocationInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/purchaseOrderAllocation/list'

        response.reset()

        populateValidParams(params)
        def purchaseOrderAllocation = new PurchaseOrderAllocation(params)

        assert purchaseOrderAllocation.save() != null
        assert PurchaseOrderAllocation.count() == 1

        params.id = purchaseOrderAllocation.id

        controller.delete()

        assert PurchaseOrderAllocation.count() == 0
        assert PurchaseOrderAllocation.get(purchaseOrderAllocation.id) == null
        assert response.redirectedUrl == '/purchaseOrderAllocation/list'
    }
}
