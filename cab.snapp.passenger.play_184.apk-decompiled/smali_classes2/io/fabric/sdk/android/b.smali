.class public final Lio/fabric/sdk/android/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/fabric/sdk/android/l;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 33
    iput v0, p0, Lio/fabric/sdk/android/b;->a:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lio/fabric/sdk/android/b;->a:I

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 88
    invoke-virtual {p0, p1, p2, v0}, Lio/fabric/sdk/android/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    const/4 p2, 0x3

    .line 53
    invoke-virtual {p0, p1, p2}, Lio/fabric/sdk/android/b;->isLoggable(Ljava/lang/String;I)Z

    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 108
    invoke-virtual {p0, p1, p2, v0}, Lio/fabric/sdk/android/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    const/4 p2, 0x6

    .line 81
    invoke-virtual {p0, p1, p2}, Lio/fabric/sdk/android/b;->isLoggable(Ljava/lang/String;I)Z

    return-void
.end method

.method public final getLogLevel()I
    .locals 1

    .line 43
    iget v0, p0, Lio/fabric/sdk/android/b;->a:I

    return v0
.end method

.method public final i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 98
    invoke-virtual {p0, p1, p2, v0}, Lio/fabric/sdk/android/b;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    const/4 p2, 0x4

    .line 67
    invoke-virtual {p0, p1, p2}, Lio/fabric/sdk/android/b;->isLoggable(Ljava/lang/String;I)Z

    return-void
.end method

.method public final isLoggable(Ljava/lang/String;I)Z
    .locals 0

    .line 38
    iget p1, p0, Lio/fabric/sdk/android/b;->a:I

    if-gt p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final log(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 113
    invoke-virtual {p0, p1, p2, p3, v0}, Lio/fabric/sdk/android/b;->log(ILjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final log(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    if-nez p4, :cond_0

    .line 118
    invoke-virtual {p0, p2, p1}, Lio/fabric/sdk/android/b;->isLoggable(Ljava/lang/String;I)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 119
    :cond_0
    invoke-static {p1, p2, p3}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public final setLogLevel(I)V
    .locals 0

    .line 48
    iput p1, p0, Lio/fabric/sdk/android/b;->a:I

    return-void
.end method

.method public final v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 93
    invoke-virtual {p0, p1, p2, v0}, Lio/fabric/sdk/android/b;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    const/4 p2, 0x2

    .line 60
    invoke-virtual {p0, p1, p2}, Lio/fabric/sdk/android/b;->isLoggable(Ljava/lang/String;I)Z

    return-void
.end method

.method public final w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 103
    invoke-virtual {p0, p1, p2, v0}, Lio/fabric/sdk/android/b;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    const/4 p2, 0x5

    .line 74
    invoke-virtual {p0, p1, p2}, Lio/fabric/sdk/android/b;->isLoggable(Ljava/lang/String;I)Z

    return-void
.end method
