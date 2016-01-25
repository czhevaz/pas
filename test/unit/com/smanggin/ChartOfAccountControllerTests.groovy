package com.smanggin



import org.junit.*
import grails.test.mixin.*

/**
 * ChartOfAccountControllerTests
 * A unit test class is used to test individual methods or blocks of code without considering the surrounding infrastructure
 */
@TestFor(ChartOfAccountController)
@Mock(ChartOfAccount)
class ChartOfAccountControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/chartOfAccount/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.chartOfAccountInstanceList.size() == 0
        assert model.chartOfAccountInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.chartOfAccountInstance != null
    }

    void testSave() {
        controller.save()

        assert model.chartOfAccountInstance != null
        assert view == '/chartOfAccount/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/chartOfAccount/show/1'
        assert controller.flash.message != null
        assert ChartOfAccount.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/chartOfAccount/list'


        populateValidParams(params)
        def chartOfAccount = new ChartOfAccount(params)

        assert chartOfAccount.save() != null

        params.id = chartOfAccount.id

        def model = controller.show()

        assert model.chartOfAccountInstance == chartOfAccount
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/chartOfAccount/list'


        populateValidParams(params)
        def chartOfAccount = new ChartOfAccount(params)

        assert chartOfAccount.save() != null

        params.id = chartOfAccount.id

        def model = controller.edit()

        assert model.chartOfAccountInstance == chartOfAccount
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/chartOfAccount/list'

        response.reset()


        populateValidParams(params)
        def chartOfAccount = new ChartOfAccount(params)

        assert chartOfAccount.save() != null

        // test invalid parameters in update
        params.id = chartOfAccount.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/chartOfAccount/edit"
        assert model.chartOfAccountInstance != null

        chartOfAccount.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/chartOfAccount/show/$chartOfAccount.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        chartOfAccount.clearErrors()

        populateValidParams(params)
        params.id = chartOfAccount.id
        params.version = -1
        controller.update()

        assert view == "/chartOfAccount/edit"
        assert model.chartOfAccountInstance != null
        assert model.chartOfAccountInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/chartOfAccount/list'

        response.reset()

        populateValidParams(params)
        def chartOfAccount = new ChartOfAccount(params)

        assert chartOfAccount.save() != null
        assert ChartOfAccount.count() == 1

        params.id = chartOfAccount.id

        controller.delete()

        assert ChartOfAccount.count() == 0
        assert ChartOfAccount.get(chartOfAccount.id) == null
        assert response.redirectedUrl == '/chartOfAccount/list'
    }
}
