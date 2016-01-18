package com.smanggin



import org.junit.*
import grails.test.mixin.*

/**
 * LobControllerTests
 * A unit test class is used to test individual methods or blocks of code without considering the surrounding infrastructure
 */
@TestFor(LobController)
@Mock(Lob)
class LobControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/lob/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.lobInstanceList.size() == 0
        assert model.lobInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.lobInstance != null
    }

    void testSave() {
        controller.save()

        assert model.lobInstance != null
        assert view == '/lob/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/lob/show/1'
        assert controller.flash.message != null
        assert Lob.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/lob/list'


        populateValidParams(params)
        def lob = new Lob(params)

        assert lob.save() != null

        params.id = lob.id

        def model = controller.show()

        assert model.lobInstance == lob
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/lob/list'


        populateValidParams(params)
        def lob = new Lob(params)

        assert lob.save() != null

        params.id = lob.id

        def model = controller.edit()

        assert model.lobInstance == lob
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/lob/list'

        response.reset()


        populateValidParams(params)
        def lob = new Lob(params)

        assert lob.save() != null

        // test invalid parameters in update
        params.id = lob.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/lob/edit"
        assert model.lobInstance != null

        lob.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/lob/show/$lob.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        lob.clearErrors()

        populateValidParams(params)
        params.id = lob.id
        params.version = -1
        controller.update()

        assert view == "/lob/edit"
        assert model.lobInstance != null
        assert model.lobInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/lob/list'

        response.reset()

        populateValidParams(params)
        def lob = new Lob(params)

        assert lob.save() != null
        assert Lob.count() == 1

        params.id = lob.id

        controller.delete()

        assert Lob.count() == 0
        assert Lob.get(lob.id) == null
        assert response.redirectedUrl == '/lob/list'
    }
}
