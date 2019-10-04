package cab.snapp.snappnetwork;

import io.reactivex.z;
import java.util.Map;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.DELETE;
import retrofit2.http.FieldMap;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.GET;
import retrofit2.http.HeaderMap;
import retrofit2.http.PATCH;
import retrofit2.http.POST;
import retrofit2.http.PUT;
import retrofit2.http.QueryMap;
import retrofit2.http.Url;

interface ApiServiceInterface {
    @DELETE
    Call<ResponseBody> performDeleteRequest(@Url String str, @HeaderMap Map<String, String> map, @QueryMap Map<String, String> map2);

    @DELETE
    z<ResponseBody> performDeleteRequestObservable(@Url String str, @HeaderMap Map<String, String> map, @QueryMap Map<String, String> map2);

    @GET
    Call<ResponseBody> performGetRequest(@Url String str, @HeaderMap Map<String, String> map, @QueryMap Map<String, String> map2);

    @GET
    z<ResponseBody> performGetRequestObservable(@Url String str, @HeaderMap Map<String, String> map, @QueryMap Map<String, String> map2);

    @GET
    Call<ResponseBody> performGetRequestWithParam(@Url String str, @HeaderMap Map<String, String> map, @QueryMap Map<String, String> map2, @QueryMap Map<String, String> map3);

    @GET
    z<ResponseBody> performGetRequestWithParamObservable(@Url String str, @HeaderMap Map<String, String> map, @QueryMap Map<String, String> map2, @QueryMap Map<String, String> map3);

    @FormUrlEncoded
    @PATCH
    Call<ResponseBody> performPatchRequest(@Url String str, @HeaderMap Map<String, String> map, @FieldMap(encoded = true) Map<String, String> map2, @QueryMap Map<String, String> map3);

    @PATCH
    Call<ResponseBody> performPatchRequest(@Url String str, @HeaderMap Map<String, String> map, @Body RequestBody requestBody, @QueryMap Map<String, String> map2);

    @FormUrlEncoded
    @PATCH
    Call<ResponseBody> performPatchRequestNotEncoded(@Url String str, @HeaderMap Map<String, String> map, @FieldMap Map<String, String> map2, @QueryMap Map<String, String> map3);

    @FormUrlEncoded
    @PATCH
    z<ResponseBody> performPatchRequestObservable(@Url String str, @HeaderMap Map<String, String> map, @FieldMap(encoded = true) Map<String, String> map2, @QueryMap Map<String, String> map3);

    @PATCH
    z<ResponseBody> performPatchRequestObservable(@Url String str, @HeaderMap Map<String, String> map, @Body RequestBody requestBody, @QueryMap Map<String, String> map2);

    @FormUrlEncoded
    @PATCH
    z<ResponseBody> performPatchRequestObservableNotEncoded(@Url String str, @HeaderMap Map<String, String> map, @FieldMap Map<String, String> map2, @QueryMap Map<String, String> map3);

    @FormUrlEncoded
    @POST
    Call<ResponseBody> performPostRequest(@Url String str, @HeaderMap Map<String, String> map, @FieldMap(encoded = true) Map<String, String> map2, @QueryMap Map<String, String> map3);

    @POST
    Call<ResponseBody> performPostRequest(@Url String str, @HeaderMap Map<String, String> map, @Body RequestBody requestBody, @QueryMap Map<String, String> map2);

    @FormUrlEncoded
    @POST
    Call<ResponseBody> performPostRequestNotEncoded(@Url String str, @HeaderMap Map<String, String> map, @FieldMap Map<String, String> map2, @QueryMap Map<String, String> map3);

    @FormUrlEncoded
    @POST
    z<ResponseBody> performPostRequestObservable(@Url String str, @HeaderMap Map<String, String> map, @FieldMap(encoded = true) Map<String, String> map2, @QueryMap Map<String, String> map3);

    @POST
    z<ResponseBody> performPostRequestObservable(@Url String str, @HeaderMap Map<String, String> map, @Body RequestBody requestBody, @QueryMap Map<String, String> map2);

    @FormUrlEncoded
    @POST
    z<ResponseBody> performPostRequestObservableNotEncoded(@Url String str, @HeaderMap Map<String, String> map, @FieldMap Map<String, String> map2, @QueryMap Map<String, String> map3);

    @FormUrlEncoded
    @PUT
    Call<ResponseBody> performPutRequest(@Url String str, @HeaderMap Map<String, String> map, @FieldMap(encoded = true) Map<String, String> map2, @QueryMap Map<String, String> map3);

    @PUT
    Call<ResponseBody> performPutRequest(@Url String str, @HeaderMap Map<String, String> map, @Body RequestBody requestBody, @QueryMap Map<String, String> map2);

    @FormUrlEncoded
    @PUT
    Call<ResponseBody> performPutRequestNotEncoded(@Url String str, @HeaderMap Map<String, String> map, @FieldMap Map<String, String> map2, @QueryMap Map<String, String> map3);

    @FormUrlEncoded
    @PUT
    z<ResponseBody> performPutRequestObservable(@Url String str, @HeaderMap Map<String, String> map, @FieldMap(encoded = true) Map<String, String> map2, @QueryMap Map<String, String> map3);

    @PUT
    z<ResponseBody> performPutRequestObservable(@Url String str, @HeaderMap Map<String, String> map, @Body RequestBody requestBody, @QueryMap Map<String, String> map2);

    @FormUrlEncoded
    @PUT
    z<ResponseBody> performPutRequestObservableNotEncoded(@Url String str, @HeaderMap Map<String, String> map, @FieldMap Map<String, String> map2, @QueryMap Map<String, String> map3);
}
