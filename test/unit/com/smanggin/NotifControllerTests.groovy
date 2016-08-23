package com.smanggin



import org.junit.*
import grails.test.mixin.*

/**
 * NotifControllerTests
 * A unit test class is used to test individual methods or blocks of code without considering the surrounding infrastructure
 */
@TestFor(NotifController)
@Mock(Notif)
class NotifControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/notif/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.notifInstanceList.size() == 0
        assert model.notifInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.notifInstance != null
    }

    void testSave() {
        controller.save()

        assert model.notifInstance != null
        assert view == '/notif/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/notif/show/1'
        assert controller.flash.message != null
        assert Notif.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/notif/list'


        populateValidParams(params)
        def notif = new Notif(params)

        assert notif.save() != null

        params.id = notif.id

        def model = controller.show()

        assert model.notifInstance == notif
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/notif/list'


        populateValidParams(params)
        def notif = new Notif(params)

        assert notif.save() != null

        params.id = notif.id

        def model = controller.edit()

        assert model.notifInstance == notif
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/notif/list'

        response.reset()


        populateValidParams(params)
        def notif = new Notif(params)

        assert notif.save() != null

        // test invalid parameters in update
        params.id = notif.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/notif/edit"
        assert model.notifInstance != null

        notif.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/notif/show/$notif.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        notif.clearErrors()

        populateValidParams(params)
        params.id = notif.id
        params.version = -1
        controller.update()

        assert view == "/notif/edit"
        assert model.notifInstance != null
        assert model.notifInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/notif/list'

        response.reset()

        populateValidParams(params)
        def notif = new Notif(params)

        assert notif.save() != null
        assert Notif.count() == 1

        params.id = notif.id

        controller.delete()

        assert Notif.count() == 0
        assert Notif.get(notif.id) == null
        assert response.redirectedUrl == '/notif/list'
    }
}
