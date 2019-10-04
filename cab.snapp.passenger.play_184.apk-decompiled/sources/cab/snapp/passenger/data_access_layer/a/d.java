package cab.snapp.passenger.data_access_layer.a;

import android.content.Context;
import android.location.Location;
import android.os.Build;
import cab.snapp.authenticator.c;
import cab.snapp.passenger.BaseApplication;
import cab.snapp.passenger.data.models.PlaceLatLng;
import cab.snapp.passenger.data.models.Profile;
import cab.snapp.passenger.data.models.ProfileMeta;
import cab.snapp.passenger.data.models.RideRatingModel;
import cab.snapp.passenger.data.models.charge.SubmitChargeResponse;
import cab.snapp.passenger.data_access_layer.network.b;
import cab.snapp.passenger.data_access_layer.network.requests.ApWalletRegistrationRequest;
import cab.snapp.passenger.data_access_layer.network.requests.AsanPardakhtPaymentRequest;
import cab.snapp.passenger.data_access_layer.network.requests.CreditRequest;
import cab.snapp.passenger.data_access_layer.network.requests.EditFavoriteRequest;
import cab.snapp.passenger.data_access_layer.network.requests.EditOptionsRequest;
import cab.snapp.passenger.data_access_layer.network.requests.FollowedAppsRequest;
import cab.snapp.passenger.data_access_layer.network.requests.GeocodeRequest;
import cab.snapp.passenger.data_access_layer.network.requests.InRidePaymentRequest;
import cab.snapp.passenger.data_access_layer.network.requests.LoginByPhoneNumberRequest;
import cab.snapp.passenger.data_access_layer.network.requests.OnlinePaymentRequest;
import cab.snapp.passenger.data_access_layer.network.requests.PassengerConfigRequest;
import cab.snapp.passenger.data_access_layer.network.requests.PinRequest;
import cab.snapp.passenger.data_access_layer.network.requests.PriceRequest;
import cab.snapp.passenger.data_access_layer.network.requests.RegisterEmailRequest;
import cab.snapp.passenger.data_access_layer.network.requests.RideMessageRequest;
import cab.snapp.passenger.data_access_layer.network.requests.RideRateRequest;
import cab.snapp.passenger.data_access_layer.network.requests.RideRequest;
import cab.snapp.passenger.data_access_layer.network.requests.SaveFavoriteRequest;
import cab.snapp.passenger.data_access_layer.network.requests.SendTicketRequest;
import cab.snapp.passenger.data_access_layer.network.requests.SignUpRequest;
import cab.snapp.passenger.data_access_layer.network.requests.SnappChargeRechargeRequest;
import cab.snapp.passenger.data_access_layer.network.requests.UpdateProfileRequest;
import cab.snapp.passenger.data_access_layer.network.requests.UpdateVoucherRequest;
import cab.snapp.passenger.data_access_layer.network.requests.VerificationCodeForEditPhoneNumberRequest;
import cab.snapp.passenger.data_access_layer.network.requests.VerifyPhoneForEditRequest;
import cab.snapp.passenger.data_access_layer.network.requests.VoucherRequest;
import cab.snapp.passenger.data_access_layer.network.requests.oauth.OAuthLoginWithEmailBody;
import cab.snapp.passenger.data_access_layer.network.requests.oauth.OAuthLoginWithGoogleBody;
import cab.snapp.passenger.data_access_layer.network.requests.oauth.OAuthLoginWithPhoneToken;
import cab.snapp.passenger.data_access_layer.network.requests.smapp.SmappDestinationLogRequest;
import cab.snapp.passenger.data_access_layer.network.requests.smapp.SmappOriginLogRequest;
import cab.snapp.passenger.data_access_layer.network.requests.smapp.SmappSelectItemLogRequest;
import cab.snapp.passenger.data_access_layer.network.responses.AboutUsResponse;
import cab.snapp.passenger.data_access_layer.network.responses.ApWalletRegistrationResponse;
import cab.snapp.passenger.data_access_layer.network.responses.AsanPardakhtPaymentResponse;
import cab.snapp.passenger.data_access_layer.network.responses.AutocompletePredictionResponse;
import cab.snapp.passenger.data_access_layer.network.responses.CancelRideRequestResponse;
import cab.snapp.passenger.data_access_layer.network.responses.CedarSearchResponse;
import cab.snapp.passenger.data_access_layer.network.responses.ChangeLogSeenResponse;
import cab.snapp.passenger.data_access_layer.network.responses.ChargeHistoryResponse;
import cab.snapp.passenger.data_access_layer.network.responses.ChargeOperatorsResponse;
import cab.snapp.passenger.data_access_layer.network.responses.ChargeRecentlyMobileNumbersResponse;
import cab.snapp.passenger.data_access_layer.network.responses.ConfigResponse;
import cab.snapp.passenger.data_access_layer.network.responses.CreditHistoryResponse;
import cab.snapp.passenger.data_access_layer.network.responses.CreditResponse;
import cab.snapp.passenger.data_access_layer.network.responses.EditOptionsResponse;
import cab.snapp.passenger.data_access_layer.network.responses.FavoriteResponse;
import cab.snapp.passenger.data_access_layer.network.responses.InRidePaymentResponse;
import cab.snapp.passenger.data_access_layer.network.responses.JiringPaymentResponse;
import cab.snapp.passenger.data_access_layer.network.responses.LoginByPhoneNumberResponse;
import cab.snapp.passenger.data_access_layer.network.responses.MessagesResponse;
import cab.snapp.passenger.data_access_layer.network.responses.OnlinePaymentResponse;
import cab.snapp.passenger.data_access_layer.network.responses.OperatorConfigResponse;
import cab.snapp.passenger.data_access_layer.network.responses.OptionalConfigResponse;
import cab.snapp.passenger.data_access_layer.network.responses.PinResponse;
import cab.snapp.passenger.data_access_layer.network.responses.PlaceDetailResponse;
import cab.snapp.passenger.data_access_layer.network.responses.PriceResponse;
import cab.snapp.passenger.data_access_layer.network.responses.ProfileResponse;
import cab.snapp.passenger.data_access_layer.network.responses.RegisterEmailResponse;
import cab.snapp.passenger.data_access_layer.network.responses.RequestConfirmationCodeResponse;
import cab.snapp.passenger.data_access_layer.network.responses.RideHistoryResponse;
import cab.snapp.passenger.data_access_layer.network.responses.RidePaymentStatusResponse;
import cab.snapp.passenger.data_access_layer.network.responses.RideRatingReasonsResponse;
import cab.snapp.passenger.data_access_layer.network.responses.RideReceiptResponse;
import cab.snapp.passenger.data_access_layer.network.responses.RideResponse;
import cab.snapp.passenger.data_access_layer.network.responses.RideVoucherResponse;
import cab.snapp.passenger.data_access_layer.network.responses.SaveFavoriteResponse;
import cab.snapp.passenger.data_access_layer.network.responses.SettingsResponse;
import cab.snapp.passenger.data_access_layer.network.responses.SnappGroupContentResponse;
import cab.snapp.passenger.data_access_layer.network.responses.TicketItemResponse;
import cab.snapp.passenger.data_access_layer.network.responses.TransferCreditResponse;
import cab.snapp.passenger.data_access_layer.network.responses.UpdateOptionsResponse;
import cab.snapp.passenger.data_access_layer.network.responses.VoucherResponse;
import cab.snapp.passenger.f.b.b.c;
import cab.snapp.passenger.f.g;
import cab.snapp.snappnetwork.model.f;
import io.reactivex.e.h;
import io.reactivex.i.a;
import io.reactivex.z;
import java.util.HashMap;
import javax.inject.Inject;

public final class d extends a {
    private c c;
    private cab.snapp.passenger.f.b.b.c d;
    private b e;

    @Inject
    public d(c cVar, cab.snapp.passenger.f.b.b.c cVar2, b bVar) {
        this.c = cVar;
        this.d = cVar2;
        this.e = bVar;
    }

    private synchronized <R extends f> z<R> a(cab.snapp.snappnetwork.f<R> fVar) {
        return fVar.buildObservable().subscribeOn(a.newThread()).observeOn(io.reactivex.a.b.a.mainThread()).onErrorResumeNext($$Lambda$d$r86vQw7iPFMvsRzJfaiI2Sa22Ak.INSTANCE);
    }

    public final synchronized z<ConfigResponse> getConfig(Context context) {
        cab.snapp.snappnetwork.f<E> POST;
        PassengerConfigRequest passengerConfigRequest = new PassengerConfigRequest();
        passengerConfigRequest.setMacAddress(cab.snapp.c.a.getDeviceMACAddress((BaseApplication) context.getApplicationContext()));
        passengerConfigRequest.setAndroidVersionName(Build.VERSION.RELEASE);
        passengerConfigRequest.setCarrierName(cab.snapp.c.a.getCarrierName((BaseApplication) context.getApplicationContext()));
        passengerConfigRequest.setDeviceName(cab.snapp.c.a.getDeviceName());
        passengerConfigRequest.setVersionCode(cab.snapp.passenger.c.VERSION_CODE);
        passengerConfigRequest.setAndroidSecureId(cab.snapp.c.a.getSecureDeviceIdString((BaseApplication) context.getApplicationContext()));
        POST = this.e.getBaseInstance().POST(b.a.getConfig(), ConfigResponse.class);
        if (!this.c.isUserAuthorized()) {
            POST = this.e.getBaseInstance().POST(b.a.getConfig(), ConfigResponse.class).setDontNeedAuthentication();
        } else {
            passengerConfigRequest.setLocale(g.getCurrentActiveLocaleString());
        }
        POST.setPostBody(passengerConfigRequest);
        return a(POST);
    }

    public final synchronized z<SnappGroupContentResponse> getSnappGroupContents() {
        return a(this.e.getBaseInstance().GET(b.a.getJekContent(), SnappGroupContentResponse.class));
    }

    public final synchronized z<f> signUp(String str, String str2, String str3, boolean z) {
        SignUpRequest signUpRequest;
        signUpRequest = new SignUpRequest();
        signUpRequest.fullName = str;
        signUpRequest.email = str2;
        signUpRequest.password = str3;
        signUpRequest.newsletter = z ? 1 : 0;
        signUpRequest.secureId = cab.snapp.c.a.getSecureDeviceIdString(BaseApplication.get(BaseApplication.getContext()));
        return a(this.e.getBaseInstance().PUT(b.a.getSignup(), f.class).setPostBody(signUpRequest).setDontNeedAuthentication());
    }

    public final synchronized z<AboutUsResponse> getAboutUsContent() {
        return a(this.e.getBaseInstance().GET(b.a.getAbout(), AboutUsResponse.class));
    }

    public final synchronized z<cab.snapp.snappnetwork.model.c> loginWithPhoneToken(String str, String str2) {
        HashMap hashMap;
        hashMap = new HashMap();
        hashMap.put("locale", g.getCurrentActiveLocaleString());
        return a(this.e.getAuthInstance().POST(cab.snapp.snappnetwork.model.c.class).setRequestBodyHashMap(new OAuthLoginWithPhoneToken(str, str2).getBody()).setAdditionalHeader(hashMap).setDontNeedAuthentication()).map(new h() {
            public final Object apply(Object obj) {
                return d.this.a((cab.snapp.snappnetwork.model.c) obj);
            }
        });
    }

    public final synchronized z<cab.snapp.snappnetwork.model.c> loginWithGoogle(String str) {
        return a(this.e.getAuthInstance().POST(cab.snapp.snappnetwork.model.c.class).setRequestBodyHashMap(new OAuthLoginWithGoogleBody(str).getBody()).setDontNeedAuthentication()).map(new h() {
            public final Object apply(Object obj) {
                return d.this.a((cab.snapp.snappnetwork.model.c) obj);
            }
        });
    }

    public final synchronized z<cab.snapp.snappnetwork.model.c> loginWithEmail(String str, String str2) {
        return a(this.e.getAuthInstance().POST(cab.snapp.snappnetwork.model.c.class).setRequestBodyHashMap(new OAuthLoginWithEmailBody(str, str2).getBody()).setDontNeedAuthentication()).map(new h() {
            public final Object apply(Object obj) {
                return d.this.a((cab.snapp.snappnetwork.model.c) obj);
            }
        });
    }

    /* access modifiers changed from: private */
    public /* synthetic */ cab.snapp.snappnetwork.model.c a(cab.snapp.snappnetwork.model.c cVar) throws Exception {
        if (cVar == null) {
            return null;
        }
        if (this.c.createAccount(BaseApplication.getContext(), cVar.getEmail(), cVar.getAccessToken(), cVar.getRefreshToken(), String.valueOf(cVar.getExpiresIn()))) {
            cab.snapp.passenger.f.b.b.c cVar2 = this.d;
            String str = c.C0021c.USERS;
            String str2 = c.b.SIGNIN;
            cVar2.sendAnalyticsEvent(str, str2, str2);
            return cVar;
        }
        throw new Exception("Create Account Error");
    }

    public final synchronized z<LoginByPhoneNumberResponse> askTokenForPhoneNumber(String str) {
        LoginByPhoneNumberRequest loginByPhoneNumberRequest;
        HashMap hashMap;
        loginByPhoneNumberRequest = new LoginByPhoneNumberRequest();
        loginByPhoneNumberRequest.setPhoneNumber(str);
        loginByPhoneNumberRequest.setDeviceId(cab.snapp.c.a.getSecureDeviceIdString(BaseApplication.get(BaseApplication.getContext())));
        hashMap = new HashMap();
        hashMap.put("locale", g.getCurrentActiveLocaleString());
        return a(this.e.getAuthInstance().POST(b.a.getOtp(), LoginByPhoneNumberResponse.class).setPostBody(loginByPhoneNumberRequest).setAdditionalHeader(hashMap).setDontNeedAuthentication());
    }

    public final synchronized z<f> requestForgotPassword(String str) {
        return a(this.e.getBaseInstance().PATCH(b.a.getForgotPassword(str), f.class).setPostBody(new cab.snapp.snappnetwork.model.d()).setDontNeedAuthentication());
    }

    public final synchronized z<FavoriteResponse> getFavorites() {
        return a(this.e.getBaseInstance().GET(b.a.getFavorite(), FavoriteResponse.class));
    }

    public final synchronized z<AutocompletePredictionResponse> getAutoCompletePredictions(String str, String str2, Location location) {
        return a(this.e.getSmappInstance().GET(b.a.getSmappAutoComplete(str, str2, location, this.c.getAuthToken()), AutocompletePredictionResponse.class));
    }

    public final synchronized z<CedarSearchResponse> getCedarSearch(GeocodeRequest geocodeRequest) {
        cab.snapp.snappnetwork.f<E> POST;
        POST = this.e.getLocationInstance().POST(b.a.getGeocode(), CedarSearchResponse.class);
        POST.setPostBody(geocodeRequest);
        return a(POST);
    }

    public final synchronized z<PlaceDetailResponse> getPlaceDetails(String str, String str2) {
        return a(this.e.getSmappInstance().GET(b.a.getSmappPlaceDetail(str, str2, this.c.getAuthToken()), PlaceDetailResponse.class));
    }

    public final synchronized z<TicketItemResponse> getTicketTree() {
        return a(this.e.getBaseInstance().GET(b.a.getTicketTree(), TicketItemResponse.class));
    }

    public final synchronized z<TicketItemResponse> getTransactionTicketTree() {
        return a(this.e.getBaseInstance().GET(b.a.getTransactionTicketTree(), TicketItemResponse.class));
    }

    public final synchronized z<RideHistoryResponse> getRideHistory(int i) {
        return a(this.e.getBaseInstance().GET(b.a.getRideHistoryPage(i), RideHistoryResponse.class));
    }

    public final synchronized z<f> sendTicket(SendTicketRequest sendTicketRequest) {
        cab.snapp.snappnetwork.f<E> POST;
        POST = this.e.getBaseInstance().POST(b.a.getTicket(), f.class);
        POST.setPostBody(sendTicketRequest);
        return a(POST);
    }

    public final synchronized z<MessagesResponse> getMessages() {
        return a(this.e.getBaseInstance().GET(b.a.getMessages(), MessagesResponse.class));
    }

    public final synchronized z<CreditHistoryResponse> getCreditData() {
        return a(this.e.getBaseInstance().GET(b.a.getCreditHistory(), CreditHistoryResponse.class));
    }

    public final synchronized z<ProfileResponse> getProfile() {
        return a(this.e.getBaseInstance().GET(b.a.getProfile(), ProfileResponse.class));
    }

    public final synchronized z<CreditResponse> getCredit(CreditRequest.PLACE place) {
        cab.snapp.snappnetwork.f<E> POST;
        CreditRequest creditRequest = new CreditRequest();
        creditRequest.setPlace(place.string);
        POST = this.e.getBaseInstance().POST(b.a.getCredit(), CreditResponse.class);
        POST.setPostBody(creditRequest);
        return a(POST);
    }

    public final synchronized z<SettingsResponse> getSettings() {
        return a(this.e.getBaseInstance().GET(b.a.getSettings(), SettingsResponse.class));
    }

    public final synchronized z<f> changeSetting(String str, String str2) {
        return a(this.e.getBaseInstance().PATCH(b.a.patchChangeSettings(str, str2), f.class).setPostBody(new cab.snapp.snappnetwork.model.d()));
    }

    public final synchronized z<PinResponse> getPin(PinRequest pinRequest) {
        cab.snapp.snappnetwork.f<E> POST;
        POST = this.e.getLocationInstance().POST(b.a.getStPin(), PinResponse.class);
        POST.setPostBody(pinRequest);
        return a(POST);
    }

    public final synchronized z<PriceResponse> getPrice(PriceRequest priceRequest) {
        cab.snapp.snappnetwork.f<E> POST;
        POST = this.e.getBaseInstance().POST(b.a.getStPrice("184"), PriceResponse.class);
        POST.setPostBody(priceRequest);
        return a(POST);
    }

    public final synchronized z<RideVoucherResponse> updateVoucherInRide(UpdateVoucherRequest updateVoucherRequest, String str) {
        cab.snapp.snappnetwork.f<E> POST;
        POST = this.e.getBaseInstance().POST(b.a.getUpdateVoucher(str), RideVoucherResponse.class);
        POST.setPostBody(updateVoucherRequest);
        return a(POST);
    }

    public final synchronized z<RideResponse> requestRide(RideRequest rideRequest) {
        cab.snapp.snappnetwork.f<E> POST;
        POST = this.e.getBaseInstance().POST(b.a.getRide(), RideResponse.class);
        POST.setPostBody(rideRequest);
        return a(POST);
    }

    public final synchronized z<f> cancelRide(String str) {
        cab.snapp.snappnetwork.f<E> PATCH;
        PATCH = this.e.getBaseInstance().PATCH(b.a.getCancelRide(str), f.class);
        PATCH.setPostBody(new cab.snapp.snappnetwork.model.d());
        return a(PATCH);
    }

    public final synchronized z<CancelRideRequestResponse> cancelRideRequest(String str) {
        cab.snapp.snappnetwork.f<E> PATCH;
        PATCH = this.e.getBaseInstance().PATCH(b.a.getCancelRideRequest(str), CancelRideRequestResponse.class);
        PATCH.setPostBody(new cab.snapp.snappnetwork.model.d());
        return a(PATCH);
    }

    public final synchronized z<f> updateProfile(Profile profile) {
        UpdateProfileRequest updateProfileRequest;
        ProfileMeta profileMeta = new ProfileMeta();
        if (profile.getAddress() != null && !profile.getAddress().isEmpty()) {
            profileMeta.setAddress(profile.getAddress());
        }
        if (profile.getBirthday() != null && !profile.getBirthday().isEmpty()) {
            profileMeta.setBirthDate(cab.snapp.c.a.b.getDatePickerGregorianDate(profile.getBirthday()));
        }
        profileMeta.setGender(profile.getGender());
        updateProfileRequest = new UpdateProfileRequest();
        updateProfileRequest.setProfileMeta(profileMeta);
        updateProfileRequest.setFullName(profile.getName());
        if (profile.getPhone() != null && !profile.getPhone().isEmpty()) {
            updateProfileRequest.setPhone(profile.getPhone());
        }
        return a(this.e.getBaseInstance().PUT(b.a.getProfile(), f.class).setPostBody(updateProfileRequest));
    }

    public final synchronized z<RequestConfirmationCodeResponse> requestConfirmationCodeBySms(String str) {
        VerificationCodeForEditPhoneNumberRequest verificationCodeForEditPhoneNumberRequest;
        verificationCodeForEditPhoneNumberRequest = new VerificationCodeForEditPhoneNumberRequest();
        verificationCodeForEditPhoneNumberRequest.setCellphone(str);
        return a(this.e.getBaseInstance().PUT(b.a.getRegisterPhone(), RequestConfirmationCodeResponse.class).setPostBody(verificationCodeForEditPhoneNumberRequest));
    }

    public final synchronized z<RequestConfirmationCodeResponse> requestConfirmationCodeByPhoneCall(String str) {
        VerificationCodeForEditPhoneNumberRequest verificationCodeForEditPhoneNumberRequest;
        verificationCodeForEditPhoneNumberRequest = new VerificationCodeForEditPhoneNumberRequest();
        verificationCodeForEditPhoneNumberRequest.setCellphone(str);
        return a(this.e.getBaseInstance().PUT(b.a.getRegisterPhoneByCall(), RequestConfirmationCodeResponse.class).setPostBody(verificationCodeForEditPhoneNumberRequest));
    }

    public final synchronized z<f> verifyPhoneNumber(String str) {
        VerifyPhoneForEditRequest verifyPhoneForEditRequest;
        verifyPhoneForEditRequest = new VerifyPhoneForEditRequest();
        verifyPhoneForEditRequest.setCode(str);
        return a(this.e.getBaseInstance().POST(b.a.getVerifyPhone(), f.class).setPostBody(verifyPhoneForEditRequest));
    }

    public final synchronized z<RegisterEmailResponse> resendRegistrationEmail() {
        return a(this.e.getBaseInstance().GET(b.a.postRegisterEmail(), RegisterEmailResponse.class));
    }

    public final synchronized z<RegisterEmailResponse> sendRegisterationEmail(String str) {
        RegisterEmailRequest registerEmailRequest;
        registerEmailRequest = new RegisterEmailRequest();
        registerEmailRequest.setEmail(str);
        return a(this.e.getBaseInstance().POST(b.a.postRegisterEmail(), RegisterEmailResponse.class).setPostBody(registerEmailRequest));
    }

    public final synchronized z<InRidePaymentResponse> postInRidePayment(double d2, int i, Integer num) {
        InRidePaymentRequest inRidePaymentRequest;
        inRidePaymentRequest = new InRidePaymentRequest();
        if (d2 > 0.0d) {
            inRidePaymentRequest.setAmount(d2);
        }
        inRidePaymentRequest.setType(i);
        if (num != null) {
            inRidePaymentRequest.setOrganizationId(num);
        }
        return a(this.e.getBaseInstance().POST(b.a.getInRidePayment(), InRidePaymentResponse.class).setPostBody(inRidePaymentRequest));
    }

    public final synchronized z<OnlinePaymentResponse> postOnlinePayment(long j) {
        return a(this.e.getBaseInstance().POST(b.a.getOnlinePayment(), OnlinePaymentResponse.class).setPostBody(new OnlinePaymentRequest((double) j)));
    }

    public final synchronized z<AsanPardakhtPaymentResponse> postAsanPardakhtPayment(long j) {
        return a(this.e.getBaseInstance().POST(b.a.getAsanPardakhtPayment(), AsanPardakhtPaymentResponse.class).setPostBody(new AsanPardakhtPaymentRequest((double) j)));
    }

    public final synchronized z<JiringPaymentResponse> getJiringPayment(int i) {
        return a(this.e.getBaseInstance().POST(b.a.getJiringPayment(), JiringPaymentResponse.class).setPostBody(new OnlinePaymentRequest((double) i)));
    }

    public final synchronized z<VoucherResponse> putSnappCard(String str) {
        return a(this.e.getBaseInstance().PUT(b.a.getRedeemVoucher(), VoucherResponse.class).setPostBody(new VoucherRequest(str)));
    }

    public final synchronized z<RideRatingReasonsResponse> getRideRatingReasons() {
        return a(this.e.getBaseInstance().GET(b.a.getRideRatingReasons(), RideRatingReasonsResponse.class));
    }

    public final synchronized z<f> rateRide(RideRatingModel rideRatingModel) {
        RideRateRequest rideRateRequest;
        rideRateRequest = new RideRateRequest();
        rideRateRequest.setRateReasons(rideRatingModel.getSelectedReasons());
        rideRateRequest.setComment(rideRatingModel.getComment());
        rideRateRequest.setRate(rideRatingModel.getStarRate());
        rideRateRequest.setRideId(rideRatingModel.getRideId());
        return a(this.e.getBaseInstance().POST(b.a.getRate(rideRatingModel.getRideId()), f.class).setPostBody(rideRateRequest));
    }

    public final synchronized z<RideReceiptResponse> getRideReceipt(String str) {
        return a(this.e.getBaseInstance().GET(b.a.getRideReceipt(str), RideReceiptResponse.class));
    }

    public final synchronized z<OptionalConfigResponse> getOptionalConfig() {
        return a(this.e.getBaseInstance().GET(b.a.getOptionalConfig(), OptionalConfigResponse.class));
    }

    public final synchronized z<SaveFavoriteResponse> saveFavorite(SaveFavoriteRequest saveFavoriteRequest) {
        return a(this.e.getBaseInstance().PUT(b.a.getFavorite(), SaveFavoriteResponse.class).setPostBody(saveFavoriteRequest));
    }

    public final synchronized z<f> deleteFavorite(int i) {
        return a(this.e.getBaseInstance().DELETE(b.a.getDeleteFavorite(i), f.class));
    }

    public final synchronized z<f> editFavorite(int i, String str, String str2) {
        EditFavoriteRequest editFavoriteRequest;
        editFavoriteRequest = new EditFavoriteRequest();
        editFavoriteRequest.setName(str);
        editFavoriteRequest.setDetailedAddress(str2);
        return a(this.e.getBaseInstance().POST(b.a.getFavoritePlace(i), f.class).setPostBody(editFavoriteRequest));
    }

    public final synchronized z<f> sendMessageToDriver(String str, int i, String str2) {
        cab.snapp.snappnetwork.f<E> POST;
        POST = this.e.getBaseInstance().POST(b.a.getMessageToDriver(str), f.class);
        RideMessageRequest rideMessageRequest = new RideMessageRequest();
        rideMessageRequest.setMessageId(i);
        rideMessageRequest.setMessage(str2);
        POST.setPostBody(rideMessageRequest);
        return a(POST);
    }

    public final synchronized z<EditOptionsResponse> editRideOptions(String str, EditOptionsRequest editOptionsRequest) {
        cab.snapp.snappnetwork.f<E> POST;
        POST = this.e.getBaseInstance().POST(b.a.getEditOptions(str), EditOptionsResponse.class);
        POST.setPostBody(editOptionsRequest);
        return a(POST);
    }

    public final synchronized z<UpdateOptionsResponse> applyRideOptions(String str, EditOptionsRequest editOptionsRequest) {
        cab.snapp.snappnetwork.f<E> POST;
        POST = this.e.getBaseInstance().POST(b.a.getUpdateOptions(str), UpdateOptionsResponse.class);
        POST.setPostBody(editOptionsRequest);
        return a(POST);
    }

    public final synchronized z<f> logSmappOrigin(String str, double d2, double d3) {
        SmappOriginLogRequest smappOriginLogRequest;
        PlaceLatLng placeLatLng = new PlaceLatLng(d2, d3);
        smappOriginLogRequest = new SmappOriginLogRequest();
        smappOriginLogRequest.setLocation(placeLatLng);
        smappOriginLogRequest.setUuid(str);
        return a(this.e.getSmappInstance().POST(b.a.getSmappLog(), f.class).setPostBody(smappOriginLogRequest));
    }

    public final synchronized z<f> logSmappDestination(String str, double d2, double d3) {
        SmappDestinationLogRequest smappDestinationLogRequest;
        PlaceLatLng placeLatLng = new PlaceLatLng(d2, d3);
        smappDestinationLogRequest = new SmappDestinationLogRequest();
        smappDestinationLogRequest.setLocation(placeLatLng);
        smappDestinationLogRequest.setUuid(str);
        return a(this.e.getSmappInstance().POST(b.a.getSmappLog(), f.class).setPostBody(smappDestinationLogRequest));
    }

    public final synchronized z<f> logSmappSelectedOriginItem(String str) {
        SmappSelectItemLogRequest smappSelectItemLogRequest;
        smappSelectItemLogRequest = new SmappSelectItemLogRequest();
        smappSelectItemLogRequest.setOrigin_uuid(str);
        return a(this.e.getSmappInstance().POST(b.a.getSmappLog(), f.class).setPostBody(smappSelectItemLogRequest));
    }

    public final synchronized z<f> logSmappSelectedDestinationItem(String str) {
        SmappSelectItemLogRequest smappSelectItemLogRequest;
        smappSelectItemLogRequest = new SmappSelectItemLogRequest();
        smappSelectItemLogRequest.setDestination_uuid(str);
        return a(this.e.getSmappInstance().POST(b.a.getSmappLog(), f.class).setPostBody(smappSelectItemLogRequest));
    }

    public final synchronized z<f> sendEmailForVerificationBeforeLogin(String str) {
        return a(this.e.getBaseInstance().POST(b.a.getEmailVerfication(str), f.class).setPostBody(new cab.snapp.snappnetwork.model.d()).setDontNeedAuthentication());
    }

    public final synchronized z<ChangeLogSeenResponse> requestSeenChangeLog(int i) {
        return a(this.e.getBaseInstance().PATCH(b.a.getChangeLogSeen(i), ChangeLogSeenResponse.class).setPostBody(new cab.snapp.snappnetwork.model.d()));
    }

    public final synchronized z<f> sendFingerPrint(String str) {
        return a(this.e.getBaseInstance().PATCH(b.a.getFingerPrint(str), f.class).setPostBody(new cab.snapp.snappnetwork.model.d()));
    }

    public final synchronized z<f> sendAppStatus(FollowedAppsRequest followedAppsRequest) {
        return a(this.e.getBaseInstance().POST(b.a.getFollowedApp(), f.class).setPostBody(followedAppsRequest));
    }

    public final synchronized z<RidePaymentStatusResponse> getRidePaymentStatus(String str) {
        return a(this.e.getBaseInstance().GET(b.a.getRidePaymentStatus(str), RidePaymentStatusResponse.class));
    }

    public final synchronized z<ApWalletRegistrationResponse> sendApWalletRegistration(String str) {
        ApWalletRegistrationRequest apWalletRegistrationRequest;
        apWalletRegistrationRequest = new ApWalletRegistrationRequest();
        apWalletRegistrationRequest.setCellPhone(str);
        return a(this.e.getBaseInstance().POST(b.a.getApWalletRegistration(), ApWalletRegistrationResponse.class).setPostBody(apWalletRegistrationRequest));
    }

    public final synchronized z<TransferCreditResponse> getTransferCreditToAp() {
        return a(this.e.getBaseInstance().GET(b.a.getTransferSnappCreditToAp(), TransferCreditResponse.class));
    }

    public final synchronized z<ChargeOperatorsResponse> getChargeOperators() {
        return a(this.e.getChargeInstance().GET(b.a.getChargeOperators(), ChargeOperatorsResponse.class));
    }

    public final synchronized z<ChargeRecentlyMobileNumbersResponse> getRecentlyMobileNumbers() {
        return a(this.e.getChargeInstance().GET(b.a.getRecentlyMobileNumber(), ChargeRecentlyMobileNumbersResponse.class));
    }

    public final synchronized z<SubmitChargeResponse> rechargeSimCard(SnappChargeRechargeRequest snappChargeRechargeRequest) {
        cab.snapp.snappnetwork.f<E> POST;
        POST = this.e.getChargeInstance().POST(b.a.getSnappCharge(), SubmitChargeResponse.class);
        POST.setPostBody(snappChargeRechargeRequest);
        return a(POST);
    }

    public final synchronized z<ChargeHistoryResponse> getChargeHistory(int i, int i2) {
        return a(this.e.getChargeInstance().GET(b.a.getChargeHistoryPage(i, i2), ChargeHistoryResponse.class));
    }

    public final synchronized z<OperatorConfigResponse> getOperatorChargeConfig(long j) {
        return a(this.e.getChargeInstance().GET(b.a.getOperatorChargeConfig(j), OperatorConfigResponse.class));
    }
}
