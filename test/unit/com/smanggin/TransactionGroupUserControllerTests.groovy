package com.smanggin



import org.junit.*
import grails.test.mixin.*

/**
 * TransactionGroupUserControllerTests
 * A unit test class is used to test individual methods or blocks of code without considering the surrounding infrastructure
 */
@TestFor(TransactionGroupUserController)
@Mock(TransactionGroupUser)
class TransactionGroupUserControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/transactionGroupUser/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.transactionGroupUserInstanceList.size() == 0
        assert model.transactionGroupUserInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.transactionGroupUserInstance != null
    }

    void testSave() {
        controller.save()

        assert model.transactionGroupUserInstance != null
        assert view == '/transactionGroupUser/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/transactionGroupUser/show/1'
        assert controller.flash.message != null
        assert TransactionGroupUser.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/transactionGroupUser/list'


        populateValidParams(params)
        def transactionGroupUser = new TransactionGroupUser(params)

        assert transactionGroupUser.save() != null

        params.id = transactionGroupUser.id

        def model = controller.show()

        assert model.transactionGroupUserInstance == transactionGroupUser
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/transactionGroupUser/list'


        populateValidParams(params)
        def transactionGroupUser = new TransactionGroupUser(params)

        assert transactionGroupUser.save() != null

        params.id = transactionGroupUser.id

        def model = controller.edit()

        assert model.transactionGroupUserInstance == transactionGroupUser
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/transactionGroupUser/list'

        response.reset()


        populateValidParams(params)
        def transactionGroupUser = new TransactionGroupUser(params)

        assert transactionGroupUser.save() != null

        // test invalid parameters in update
        params.id = transactionGroupUser.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/transactionGroupUser/edit"
        assert model.transactionGroupUserInstance != null

        transactionGroupUser.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/transactionGroupUser/show/$transactionGroupUser.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        transactionGroupUser.clearErrors()

        populateValidParams(params)
        params.id = transactionGroupUser.id
        params.version = -1
        controller.update()

        assert view == "/transactionGroupUser/edit"
        assert model.transactionGroupUserInstance != null
        assert model.transactionGroupUserInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/transactionGroupUser/list'

        response.reset()

        populateValidParams(params)
        def transactionGroupUser = new TransactionGroupUser(params)

        assert transactionGroupUser.save() != null
        assert TransactionGroupUser.count() == 1

        params.id = transactionGroupUser.id

        controller.delete()

        assert TransactionGroupUser.count() == 0
        assert TransactionGroupUser.get(transactionGroupUser.id) == null
        assert response.redirectedUrl == '/transactionGroupUser/list'
    }
}
