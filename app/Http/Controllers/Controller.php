<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

     /**
     * Return validation error response.
     *
     * @return \Illuminate\Http\Response
     */
    public static function validationErrorResponse($data, $errorCode = 422)
    {
        return response()->json([
            'success'   => false,
            'errors'      => $data,
            'message'   => 'Failed validation.'
        ], $errorCode);
    }


    /**
     * Handles server error response
     *
     * @return \Illuminate\Http\Response
     */
    public static function sendServerError($message)
    {
        return response()->json([
            'success'   => false,
            'message'   => $message
        ], 500);
    }

    /**
     * success response method.
     *
     * @return \Illuminate\Http\Response
     */
    public static function sendResponse($result, $message)
    {
        $response = [
            'success' => true,
            'message' => $message,
            'data'    => $result,
        ];


        return response()->json($response, 200);
    }

    /**
     * return error response.
     *
     * @return \Illuminate\Http\Response
     */
    public static function sendError($error, $errorMessages = [], $code = 404)
    {
        $response = [
            'success' => false,
            'message' => $error,
        ];


        if (!empty($errorMessages)) {
            $response['data'] = $errorMessages;
        }


        return response()->json($response, $code);
    }
}
