.class public Lcom/apptentive/android/sdk/partners/apptimize/ApptentiveApptimizeTestInfo;
.super Ljava/lang/Object;
.source "ApptentiveApptimizeTestInfo.java"


# instance fields
.field private final enrolledVariantName:Ljava/lang/String;

.field private final participated:Z

.field private final testName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/apptentive/android/sdk/partners/apptimize/ApptentiveApptimizeTestInfo;->testName:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/apptentive/android/sdk/partners/apptimize/ApptentiveApptimizeTestInfo;->enrolledVariantName:Ljava/lang/String;

    .line 15
    iput-boolean p3, p0, Lcom/apptentive/android/sdk/partners/apptimize/ApptentiveApptimizeTestInfo;->participated:Z

    return-void
.end method


# virtual methods
.method public getEnrolledVariantName()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/apptentive/android/sdk/partners/apptimize/ApptentiveApptimizeTestInfo;->enrolledVariantName:Ljava/lang/String;

    return-object v0
.end method

.method public getTestName()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/apptentive/android/sdk/partners/apptimize/ApptentiveApptimizeTestInfo;->testName:Ljava/lang/String;

    return-object v0
.end method

.method public userHasParticipated()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lcom/apptentive/android/sdk/partners/apptimize/ApptentiveApptimizeTestInfo;->participated:Z

    return v0
.end method
