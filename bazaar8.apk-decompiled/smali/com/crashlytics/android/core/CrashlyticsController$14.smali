.class public Lcom/crashlytics/android/core/CrashlyticsController$14;
.super Ljava/lang/Object;
.source "CrashlyticsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/core/CrashlyticsController;->cleanInvalidTempFiles()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/crashlytics/android/core/CrashlyticsController;


# direct methods
.method public constructor <init>(Lcom/crashlytics/android/core/CrashlyticsController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/crashlytics/android/core/CrashlyticsController$14;->this$0:Lcom/crashlytics/android/core/CrashlyticsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsController$14;->this$0:Lcom/crashlytics/android/core/CrashlyticsController;

    new-instance v1, Lcom/crashlytics/android/core/CrashlyticsController$InvalidPartFileFilter;

    invoke-direct {v1}, Lcom/crashlytics/android/core/CrashlyticsController$InvalidPartFileFilter;-><init>()V

    invoke-static {v0, v1}, Lcom/crashlytics/android/core/CrashlyticsController;->access$1500(Lcom/crashlytics/android/core/CrashlyticsController;Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/core/CrashlyticsController;->doCleanInvalidTempFiles([Ljava/io/File;)V

    return-void
.end method
