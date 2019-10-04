.class public interface abstract Lcom/apptentive/android/sdk/ApptentiveInstance;
.super Ljava/lang/Object;
.source "ApptentiveInstance.java"

# interfaces
.implements Lcom/apptentive/android/sdk/util/Nullsafe;


# virtual methods
.method public abstract addInteractionUpdateListener(Lcom/apptentive/android/sdk/module/engagement/interaction/InteractionManager$InteractionUpdateListener;)V
.end method

.method public abstract getAndClearCustomData()Ljava/util/Map;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAppRelease()Lcom/apptentive/android/sdk/storage/AppRelease;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getApplicationContext()Landroid/content/Context;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getApplicationVersionCode()I
.end method

.method public abstract getApplicationVersionName()Ljava/lang/String;
.end method

.method public abstract getApptentiveHttpClient()Lcom/apptentive/android/sdk/comm/ApptentiveHttpClient;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getApptentiveTaskManager()Lcom/apptentive/android/sdk/storage/ApptentiveTaskManager;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getApptentiveToolbarTheme()Landroid/content/res/Resources$Theme;
.end method

.method public abstract getConversation()Lcom/apptentive/android/sdk/conversation/Conversation;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getConversationProxy()Lcom/apptentive/android/sdk/conversation/ConversationProxy;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getCurrentTaskStackTopActivity()Landroid/app/Activity;
.end method

.method public abstract getDefaultAppDisplayName()Ljava/lang/String;
.end method

.method public abstract getDefaultStatusBarColor()I
.end method

.method public abstract getGlobalSharedPrefs()Landroid/content/SharedPreferences;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getOnSurveyFinishedListener()Lcom/apptentive/android/sdk/module/survey/OnSurveyFinishedListener;
.end method

.method public abstract getRatingProvider()Lcom/apptentive/android/sdk/module/rating/IRatingProvider;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getRatingProviderArgs()Ljava/util/Map;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isAppUsingAppCompatTheme()Z
.end method

.method public abstract login(Ljava/lang/String;Lcom/apptentive/android/sdk/Apptentive$LoginCallback;)V
.end method

.method public abstract logout()V
.end method

.method public abstract notifyInteractionUpdated(Z)V
.end method

.method public abstract putRatingProviderArg(Ljava/lang/String;Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract removeInteractionUpdateListener(Lcom/apptentive/android/sdk/module/engagement/interaction/InteractionManager$InteractionUpdateListener;)V
.end method

.method public abstract setAuthenticationFailedListener(Lcom/apptentive/android/sdk/Apptentive$AuthenticationFailedListener;)V
.end method

.method public abstract setOnSurveyFinishedListener(Lcom/apptentive/android/sdk/module/survey/OnSurveyFinishedListener;)V
.end method

.method public abstract setRatingProvider(Lcom/apptentive/android/sdk/module/rating/IRatingProvider;)V
    .param p1    # Lcom/apptentive/android/sdk/module/rating/IRatingProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract showAboutInternal(Landroid/content/Context;Z)V
.end method

.method public abstract showMessageCenterInternal(Landroid/content/Context;Ljava/util/Map;)Z
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract updateApptentiveInteractionTheme(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V
.end method
