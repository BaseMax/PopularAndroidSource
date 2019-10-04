.class public Lcom/apptentive/android/sdk/ApptentiveLog;
.super Ljava/lang/Object;
.source "ApptentiveLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apptentive/android/sdk/ApptentiveLog$LogListener;,
        Lcom/apptentive/android/sdk/ApptentiveLog$Level;
    }
.end annotation


# static fields
.field private static logLevel:Lcom/apptentive/android/sdk/ApptentiveLog$Level;

.field private static logListener:Lcom/apptentive/android/sdk/ApptentiveLog$LogListener;

.field private static shouldSanitizeLogMessages:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLog$Level;->INFO:Lcom/apptentive/android/sdk/ApptentiveLog$Level;

    sput-object v0, Lcom/apptentive/android/sdk/ApptentiveLog;->logLevel:Lcom/apptentive/android/sdk/ApptentiveLog$Level;

    const/4 v0, 0x1

    .line 24
    sput-boolean v0, Lcom/apptentive/android/sdk/ApptentiveLog;->shouldSanitizeLogMessages:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs a(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 217
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLog$Level;->ASSERT:Lcom/apptentive/android/sdk/ApptentiveLog$Level;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1, p2}, Lcom/apptentive/android/sdk/ApptentiveLog;->log(Lcom/apptentive/android/sdk/ApptentiveLog$Level;Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs a(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 221
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLog$Level;->ASSERT:Lcom/apptentive/android/sdk/ApptentiveLog$Level;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/apptentive/android/sdk/ApptentiveLog;->log(Lcom/apptentive/android/sdk/ApptentiveLog$Level;Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 225
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLog$Level;->ASSERT:Lcom/apptentive/android/sdk/ApptentiveLog$Level;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1, p0, p1}, Lcom/apptentive/android/sdk/ApptentiveLog;->log(Lcom/apptentive/android/sdk/ApptentiveLog$Level;Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 229
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLog$Level;->ASSERT:Lcom/apptentive/android/sdk/ApptentiveLog$Level;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1, p2}, Lcom/apptentive/android/sdk/ApptentiveLog;->log(Lcom/apptentive/android/sdk/ApptentiveLog$Level;Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static canLog(Lcom/apptentive/android/sdk/ApptentiveLog$Level;)Z
    .locals 1

    .line 133
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLog;->logLevel:Lcom/apptentive/android/sdk/ApptentiveLog$Level;

    invoke-virtual {v0, p0}, Lcom/apptentive/android/sdk/ApptentiveLog$Level;->canLog(Lcom/apptentive/android/sdk/ApptentiveLog$Level;)Z

    move-result p0

    return p0
.end method

.method public static varargs d(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 153
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLog$Level;->DEBUG:Lcom/apptentive/android/sdk/ApptentiveLog$Level;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1, p2}, Lcom/apptentive/android/sdk/ApptentiveLog;->log(Lcom/apptentive/android/sdk/ApptentiveLog$Level;Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs d(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 157
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLog$Level;->DEBUG:Lcom/apptentive/android/sdk/ApptentiveLog$Level;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/apptentive/android/sdk/ApptentiveLog;->log(Lcom/apptentive/android/sdk/ApptentiveLog$Level;Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 161
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLog$Level;->DEBUG:Lcom/apptentive/android/sdk/ApptentiveLog$Level;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1, p0, p1}, Lcom/apptentive/android/sdk/ApptentiveLog;->log(Lcom/apptentive/android/sdk/ApptentiveLog$Level;Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 165
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLog$Level;->DEBUG:Lcom/apptentive/android/sdk/ApptentiveLog$Level;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1, p2}, Lcom/apptentive/android/sdk/ApptentiveLog;->log(Lcom/apptentive/android/sdk/ApptentiveLog$Level;Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 201
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLog$Level;->ERROR:Lcom/apptentive/android/sdk/ApptentiveLog$Level;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1, p2}, Lcom/apptentive/android/sdk/ApptentiveLog;->log(Lcom/apptentive/android/sdk/ApptentiveLog$Level;Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 205
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLog$Level;->ERROR:Lcom/apptentive/android/sdk/ApptentiveLog$Level;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/apptentive/android/sdk/ApptentiveLog;->log(Lcom/apptentive/android/sdk/ApptentiveLog$Level;Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 209
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLog$Level;->ERROR:Lcom/apptentive/android/sdk/ApptentiveLog$Level;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1, p0, p1}, Lcom/apptentive/android/sdk/ApptentiveLog;->log(Lcom/apptentive/android/sdk/ApptentiveLog$Level;Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 213
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLog$Level;->ERROR:Lcom/apptentive/android/sdk/ApptentiveLog$Level;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1, p2}, Lcom/apptentive/android/sdk/ApptentiveLog;->log(Lcom/apptentive/android/sdk/ApptentiveLog$Level;Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static getLogLevel()Lcom/apptentive/android/sdk/ApptentiveLog$Level;
    .locals 1

    .line 28
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLog;->logLevel:Lcom/apptentive/android/sdk/ApptentiveLog$Level;

    return-object v0
.end method

.method public static getLogsDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-eqz p0, :cond_0

    .line 129
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "com.apptentive.logs"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    .line 127
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Context is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static hideIfSanitized(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-eqz p0, :cond_0

    .line 56
    sget-boolean v0, Lcom/apptentive/android/sdk/ApptentiveLog;->shouldSanitizeLogMessages:Z

    if-eqz v0, :cond_0

    const-string p0, "<HIDDEN>"

    :cond_0
    return-object p0
.end method

.method public static varargs i(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 169
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLog$Level;->INFO:Lcom/apptentive/android/sdk/ApptentiveLog$Level;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1, p2}, Lcom/apptentive/android/sdk/ApptentiveLog;->log(Lcom/apptentive/android/sdk/ApptentiveLog$Level;Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs i(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 173
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLog$Level;->INFO:Lcom/apptentive/android/sdk/ApptentiveLog$Level;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/apptentive/android/sdk/ApptentiveLog;->log(Lcom/apptentive/android/sdk/ApptentiveLog$Level;Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 177
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLog$Level;->INFO:Lcom/apptentive/android/sdk/ApptentiveLog$Level;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1, p0, p1}, Lcom/apptentive/android/sdk/ApptentiveLog;->log(Lcom/apptentive/android/sdk/ApptentiveLog$Level;Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs i(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 181
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLog$Level;->INFO:Lcom/apptentive/android/sdk/ApptentiveLog$Level;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1, p2}, Lcom/apptentive/android/sdk/ApptentiveLog;->log(Lcom/apptentive/android/sdk/ApptentiveLog$Level;Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static initializeLogWriter(Landroid/content/Context;I)V
    .locals 1

    if-eqz p0, :cond_0

    .line 36
    new-instance v0, Lcom/apptentive/android/sdk/debug/AsyncLogWriter;

    invoke-static {p0}, Lcom/apptentive/android/sdk/ApptentiveLog;->getLogsDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/apptentive/android/sdk/debug/AsyncLogWriter;-><init>(Ljava/io/File;I)V

    sput-object v0, Lcom/apptentive/android/sdk/ApptentiveLog;->logListener:Lcom/apptentive/android/sdk/ApptentiveLog$LogListener;

    return-void

    .line 33
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Context is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static isLogWriterInitialized()Z
    .locals 1

    .line 40
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLog;->logListener:Lcom/apptentive/android/sdk/ApptentiveLog$LogListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static varargs log(Lcom/apptentive/android/sdk/ApptentiveLog$Level;Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p1    # Lcom/apptentive/android/sdk/ApptentiveLogTag;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 61
    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/apptentive/android/sdk/ApptentiveLog;->logGuarded(Lcom/apptentive/android/sdk/ApptentiveLog$Level;Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 p1, 0x6

    const-string p2, "Apptentive"

    .line 64
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Exception while trying to log a message: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p0}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static log0(Lcom/apptentive/android/sdk/ApptentiveLog$Level;Ljava/lang/String;)V
    .locals 2

    .line 113
    :try_start_0
    invoke-static {p0}, Lcom/apptentive/android/sdk/ApptentiveLog;->canLog(Lcom/apptentive/android/sdk/ApptentiveLog$Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/ApptentiveLog$Level;->getAndroidLevel()I

    move-result v0

    const-string v1, "Apptentive"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 117
    :catch_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 120
    :cond_0
    :goto_0
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLog;->logListener:Lcom/apptentive/android/sdk/ApptentiveLog$LogListener;

    if-eqz v0, :cond_1

    .line 121
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLog;->logListener:Lcom/apptentive/android/sdk/ApptentiveLog$LogListener;

    invoke-interface {v0, p0, p1}, Lcom/apptentive/android/sdk/ApptentiveLog$LogListener;->onLogMessage(Lcom/apptentive/android/sdk/ApptentiveLog$Level;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private static varargs logGuarded(Lcom/apptentive/android/sdk/ApptentiveLog$Level;Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    if-eqz p4, :cond_0

    .line 69
    array-length v0, p4

    if-lez v0, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 71
    :try_start_0
    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p3, p4

    goto :goto_0

    .line 73
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Error formatting log message: "

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 74
    sget-object p0, Lcom/apptentive/android/sdk/ApptentiveLog$Level;->ERROR:Lcom/apptentive/android/sdk/ApptentiveLog$Level;

    :cond_0
    :goto_0
    const/4 p4, 0x0

    .line 81
    invoke-static {}, Lcom/apptentive/android/sdk/util/threading/DispatchQueue;->isMainQueue()Z

    move-result v0

    const/16 v1, 0x5d

    const/16 v2, 0x5b

    if-nez v0, :cond_1

    .line 82
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    const/16 v0, 0x20

    if-eqz p1, :cond_3

    if-nez p4, :cond_2

    .line 91
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    .line 93
    :cond_2
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 96
    :goto_1
    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/ApptentiveLogTag;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    if-eqz p4, :cond_4

    .line 102
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 105
    :cond_4
    invoke-static {p0, p3}, Lcom/apptentive/android/sdk/ApptentiveLog;->log0(Lcom/apptentive/android/sdk/ApptentiveLog$Level;Ljava/lang/String;)V

    if-eqz p2, :cond_5

    .line 107
    invoke-static {p2}, Lcom/apptentive/android/sdk/util/StringUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/apptentive/android/sdk/ApptentiveLog;->log0(Lcom/apptentive/android/sdk/ApptentiveLog$Level;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public static overrideLogLevel(Lcom/apptentive/android/sdk/ApptentiveLog$Level;)V
    .locals 0

    .line 44
    sput-object p0, Lcom/apptentive/android/sdk/ApptentiveLog;->logLevel:Lcom/apptentive/android/sdk/ApptentiveLog$Level;

    return-void
.end method

.method public static setShouldSanitizeLogMessages(Z)V
    .locals 0

    .line 52
    sput-boolean p0, Lcom/apptentive/android/sdk/ApptentiveLog;->shouldSanitizeLogMessages:Z

    return-void
.end method

.method public static shouldSanitizeLogMessages()Z
    .locals 1

    .line 48
    sget-boolean v0, Lcom/apptentive/android/sdk/ApptentiveLog;->shouldSanitizeLogMessages:Z

    return v0
.end method

.method public static varargs v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 137
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLog$Level;->VERBOSE:Lcom/apptentive/android/sdk/ApptentiveLog$Level;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1, p2}, Lcom/apptentive/android/sdk/ApptentiveLog;->log(Lcom/apptentive/android/sdk/ApptentiveLog$Level;Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 141
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLog$Level;->VERBOSE:Lcom/apptentive/android/sdk/ApptentiveLog$Level;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/apptentive/android/sdk/ApptentiveLog;->log(Lcom/apptentive/android/sdk/ApptentiveLog$Level;Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs v(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 145
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLog$Level;->VERBOSE:Lcom/apptentive/android/sdk/ApptentiveLog$Level;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1, p0, p1}, Lcom/apptentive/android/sdk/ApptentiveLog;->log(Lcom/apptentive/android/sdk/ApptentiveLog$Level;Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs v(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 149
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLog$Level;->VERBOSE:Lcom/apptentive/android/sdk/ApptentiveLog$Level;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1, p2}, Lcom/apptentive/android/sdk/ApptentiveLog;->log(Lcom/apptentive/android/sdk/ApptentiveLog$Level;Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs w(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 185
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLog$Level;->WARN:Lcom/apptentive/android/sdk/ApptentiveLog$Level;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1, p2}, Lcom/apptentive/android/sdk/ApptentiveLog;->log(Lcom/apptentive/android/sdk/ApptentiveLog$Level;Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs w(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 189
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLog$Level;->WARN:Lcom/apptentive/android/sdk/ApptentiveLog$Level;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/apptentive/android/sdk/ApptentiveLog;->log(Lcom/apptentive/android/sdk/ApptentiveLog$Level;Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 193
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLog$Level;->WARN:Lcom/apptentive/android/sdk/ApptentiveLog$Level;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1, p0, p1}, Lcom/apptentive/android/sdk/ApptentiveLog;->log(Lcom/apptentive/android/sdk/ApptentiveLog$Level;Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 197
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLog$Level;->WARN:Lcom/apptentive/android/sdk/ApptentiveLog$Level;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1, p2}, Lcom/apptentive/android/sdk/ApptentiveLog;->log(Lcom/apptentive/android/sdk/ApptentiveLog$Level;Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
