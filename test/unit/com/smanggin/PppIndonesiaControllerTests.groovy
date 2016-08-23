package com.smanggin



import org.junit.*
import grails.test.mixin.*

/**
 * PppIndonesiaControllerTests
 * A unit test class is used to test individual methods or blocks of code without considering the surrounding infrastructure
 */
@TestFor(PppIndonesiaController)
@Mock(PppIndonesia)
class PppIndonesiaControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/pppIndonesia/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.pppIndonesiaInstanceList.size() == 0
        assert model.pppIndonesiaInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.pppIndonesiaInstance != null
    }

    void testSave() {
        controller.save()

        assert model.pppIndonesiaInstance != null
        assert view == '/pppIndonesia/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/pppIndonesia/show/1'
        assert controller.flash.message != null
        assert PppIndonesia.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/pppIndonesia/list'


        populateValidParams(params)
        def pppIndonesia = new PppIndonesia(params)

        assert pppIndonesia.save() != null

        params.id = pppIndonesia.id

        def model = controller.show()

        assert model.pppIndonesiaInstance == pppIndonesia
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/pppIndonesia/list'


        populateValidParams(params)
        def pppIndonesia = new PppIndonesia(params)

        assert pppIndonesia.save() != null

        params.id = pppIndonesia.id

        def model = controller.edit()

        assert model.pppIndonesiaInstance == pppIndonesia
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/pppIndonesia/list'

        response.reset()


        populateValidParams(params)
        def pppIndonesia = new PppIndonesia(params)

        assert pppIndonesia.save() != null

        // test invalid parameters in update
        params.id = pppIndonesia.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/pppIndonesia/edit"
        assert model.pppIndonesiaInstance != null

        pppIndonesia.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/pppIndonesia/show/$pppIndonesia.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        pppIndonesia.clearErrors()

        populateValidParams(params)
        params.id = pppIndonesia.id
        params.version = -1
        controller.update()

        assert view == "/pppIndonesia/edit"
        assert model.pppIndonesiaInstance != null
        assert model.pppIndonesiaInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/pppIndonesia/list'

        response.reset()

        populateValidParams(params)
        def pppIndonesia = new PppIndonesia(params)

        assert pppIndonesia.save() != null
        assert PppIndonesia.count() == 1

        params.id = pppIndonesia.id

        controller.delete()

        assert PppIndonesia.count() == 0
        assert PppIndonesia.get(pppIndonesia.id) == null
        assert response.redirectedUrl == '/pppIndonesia/list'
    }
}
