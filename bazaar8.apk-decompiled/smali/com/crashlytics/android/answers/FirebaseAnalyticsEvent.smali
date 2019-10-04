.class public Lcom/crashlytics/android/answers/FirebaseAnalyticsEvent;
.super Ljava/lang/Object;
.source "FirebaseAnalyticsEvent.java"


# instance fields
.field public final eventName:Ljava/lang/String;

.field public final eventParams:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/crashlytics/android/answers/FirebaseAnalyticsEvent;->eventName:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/crashlytics/android/answers/FirebaseAnalyticsEvent;->eventParams:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getEventName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/crashlytics/android/answers/FirebaseAnalyticsEvent;->eventName:Ljava/lang/String;

    return-object v0
.end method

.method public getEventParams()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/crashlytics/android/answers/FirebaseAnalyticsEvent;->eventParams:Landroid/os/Bundle;

    return-object v0
.end method
