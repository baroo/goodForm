# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
        $('#games').dataTable
          sPaginationType: "full_numbers"
          bJQueryUI: true
          bProcessing: true
          bServerSide: true
          bInfo:false
          bFilter:false
          sAjaxSource: $('#games').data('source')
          
jQuery ->
        $('#teams').dataTable
          sPaginationType: "full_numbers"
          bJQueryUI: true
          bProcessing: true
          bServerSide: true
          sAjaxSource: $('#teams').data('source')
          
jQuery ->
        $('#leagues').dataTable
          sPaginationType: "full_numbers"
          bJQueryUI: true
          bProcessing: true
          bServerSide: true
          sAjaxSource: $('#leagues').data('source')