package com.smanggin



import org.junit.*
import grails.test.mixin.*

/**
 * OutboxControllerTests
 * A unit test class is used to test individual methods or blocks of code without considering the surrounding infrastructure
 */
@TestFor(OutboxController)
@Mock(Outbox)
class OutboxControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/outbox/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.outboxInstanceList.size() == 0
        assert model.outboxInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.outboxInstance != null
    }

    void testSave() {
        controller.save()

        assert model.outboxInstance != null
        assert view == '/outbox/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/outbox/show/1'
        assert controller.flash.message != null
        assert Outbox.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/outbox/list'


        populateValidParams(params)
        def outbox = new Outbox(params)

        assert outbox.save() != null

        params.id = outbox.id

        def model = controller.show()

        assert model.outboxInstance == outbox
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/outbox/list'


        populateValidParams(params)
        def outbox = new Outbox(params)

        assert outbox.save() != null

        params.id = outbox.id

        def model = controller.edit()

        assert model.outboxInstance == outbox
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/outbox/list'

        response.reset()


        populateValidParams(params)
        def outbox = new Outbox(params)

        assert outbox.save() != null

        // test invalid parameters in update
        params.id = outbox.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/outbox/edit"
        assert model.outboxInstance != null

        outbox.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/outbox/show/$outbox.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        outbox.clearErrors()

        populateValidParams(params)
        params.id = outbox.id
        params.version = -1
        controller.update()

        assert view == "/outbox/edit"
        assert model.outboxInstance != null
        assert model.outboxInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/outbox/list'

        response.reset()

        populateValidParams(params)
        def outbox = new Outbox(params)

        assert outbox.save() != null
        assert Outbox.count() == 1

        params.id = outbox.id

        controller.delete()

        assert Outbox.count() == 0
        assert Outbox.get(outbox.id) == null
        assert response.redirectedUrl == '/outbox/list'
    }
}
