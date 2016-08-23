package com.smanggin



import org.junit.*
import grails.test.mixin.*

/**
 * SendControllerTests
 * A unit test class is used to test individual methods or blocks of code without considering the surrounding infrastructure
 */
@TestFor(SendController)
@Mock(Send)
class SendControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/send/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.sendInstanceList.size() == 0
        assert model.sendInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.sendInstance != null
    }

    void testSave() {
        controller.save()

        assert model.sendInstance != null
        assert view == '/send/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/send/show/1'
        assert controller.flash.message != null
        assert Send.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/send/list'


        populateValidParams(params)
        def send = new Send(params)

        assert send.save() != null

        params.id = send.id

        def model = controller.show()

        assert model.sendInstance == send
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/send/list'


        populateValidParams(params)
        def send = new Send(params)

        assert send.save() != null

        params.id = send.id

        def model = controller.edit()

        assert model.sendInstance == send
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/send/list'

        response.reset()


        populateValidParams(params)
        def send = new Send(params)

        assert send.save() != null

        // test invalid parameters in update
        params.id = send.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/send/edit"
        assert model.sendInstance != null

        send.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/send/show/$send.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        send.clearErrors()

        populateValidParams(params)
        params.id = send.id
        params.version = -1
        controller.update()

        assert view == "/send/edit"
        assert model.sendInstance != null
        assert model.sendInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/send/list'

        response.reset()

        populateValidParams(params)
        def send = new Send(params)

        assert send.save() != null
        assert Send.count() == 1

        params.id = send.id

        controller.delete()

        assert Send.count() == 0
        assert Send.get(send.id) == null
        assert response.redirectedUrl == '/send/list'
    }
}
