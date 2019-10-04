.class public final Lcom/mapbox/mapboxsdk/log/Logger;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapbox/mapboxsdk/log/Logger$LogLevel;
    }
.end annotation


# static fields
.field public static final DEBUG:I = 0x3

.field private static final DEFAULT:Lcom/mapbox/mapboxsdk/log/LoggerDefinition;

.field public static final ERROR:I = 0x6

.field public static final INFO:I = 0x4

.field public static final NONE:I = 0x63

.field public static final VERBOSE:I = 0x2

.field public static final WARN:I = 0x5

.field private static logLevel:I

.field private static volatile logger:Lcom/mapbox/mapboxsdk/log/LoggerDefinition;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/mapbox/mapboxsdk/log/Logger$1;

    invoke-direct {v0}, Lcom/mapbox/mapboxsdk/log/Logger$1;-><init>()V

    .line 74
    sput-object v0, Lcom/mapbox/mapboxsdk/log/Logger;->DEFAULT:Lcom/mapbox/mapboxsdk/log/LoggerDefinition;

    sput-object v0, Lcom/mapbox/mapboxsdk/log/Logger;->logger:Lcom/mapbox/mapboxsdk/log/LoggerDefinition;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 136
    sget v0, Lcom/mapbox/mapboxsdk/log/Logger;->logLevel:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 137
    sget-object v0, Lcom/mapbox/mapboxsdk/log/Logger;->logger:Lcom/mapbox/mapboxsdk/log/LoggerDefinition;

    invoke-interface {v0, p0, p1}, Lcom/mapbox/mapboxsdk/log/LoggerDefinition;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 150
    sget v0, Lcom/mapbox/mapboxsdk/log/Logger;->logLevel:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 151
    sget-object v0, Lcom/mapbox/mapboxsdk/log/Logger;->logger:Lcom/mapbox/mapboxsdk/log/LoggerDefinition;

    invoke-interface {v0, p0, p1, p2}, Lcom/mapbox/mapboxsdk/log/LoggerDefinition;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 217
    sget v0, Lcom/mapbox/mapboxsdk/log/Logger;->logLevel:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 218
    sget-object v0, Lcom/mapbox/mapboxsdk/log/Logger;->logger:Lcom/mapbox/mapboxsdk/log/LoggerDefinition;

    invoke-interface {v0, p0, p1}, Lcom/mapbox/mapboxsdk/log/LoggerDefinition;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 231
    sget v0, Lcom/mapbox/mapboxsdk/log/Logger;->logLevel:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 232
    sget-object v0, Lcom/mapbox/mapboxsdk/log/Logger;->logger:Lcom/mapbox/mapboxsdk/log/LoggerDefinition;

    invoke-interface {v0, p0, p1, p2}, Lcom/mapbox/mapboxsdk/log/LoggerDefinition;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 163
    sget v0, Lcom/mapbox/mapboxsdk/log/Logger;->logLevel:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 164
    sget-object v0, Lcom/mapbox/mapboxsdk/log/Logger;->logger:Lcom/mapbox/mapboxsdk/log/LoggerDefinition;

    invoke-interface {v0, p0, p1}, Lcom/mapbox/mapboxsdk/log/LoggerDefinition;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 177
    sget v0, Lcom/mapbox/mapboxsdk/log/Logger;->logLevel:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 178
    sget-object v0, Lcom/mapbox/mapboxsdk/log/Logger;->logger:Lcom/mapbox/mapboxsdk/log/LoggerDefinition;

    invoke-interface {v0, p0, p1, p2}, Lcom/mapbox/mapboxsdk/log/LoggerDefinition;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static log(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_4

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    .line 259
    invoke-static {p1, p2}, Lcom/mapbox/mapboxsdk/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 262
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    .line 256
    :cond_1
    invoke-static {p1, p2}, Lcom/mapbox/mapboxsdk/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 253
    :cond_2
    invoke-static {p1, p2}, Lcom/mapbox/mapboxsdk/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 250
    :cond_3
    invoke-static {p1, p2}, Lcom/mapbox/mapboxsdk/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 247
    :cond_4
    invoke-static {p1, p2}, Lcom/mapbox/mapboxsdk/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setLoggerDefinition(Lcom/mapbox/mapboxsdk/log/LoggerDefinition;)V
    .locals 0

    .line 98
    sput-object p0, Lcom/mapbox/mapboxsdk/log/Logger;->logger:Lcom/mapbox/mapboxsdk/log/LoggerDefinition;

    return-void
.end method

.method public static setVerbosity(I)V
    .locals 0

    .line 89
    sput p0, Lcom/mapbox/mapboxsdk/log/Logger;->logLevel:I

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 109
    sget v0, Lcom/mapbox/mapboxsdk/log/Logger;->logLevel:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 110
    sget-object v0, Lcom/mapbox/mapboxsdk/log/Logger;->logger:Lcom/mapbox/mapboxsdk/log/LoggerDefinition;

    invoke-interface {v0, p0, p1}, Lcom/mapbox/mapboxsdk/log/LoggerDefinition;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 123
    sget v0, Lcom/mapbox/mapboxsdk/log/Logger;->logLevel:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 124
    sget-object v0, Lcom/mapbox/mapboxsdk/log/Logger;->logger:Lcom/mapbox/mapboxsdk/log/LoggerDefinition;

    invoke-interface {v0, p0, p1, p2}, Lcom/mapbox/mapboxsdk/log/LoggerDefinition;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 190
    sget v0, Lcom/mapbox/mapboxsdk/log/Logger;->logLevel:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 191
    sget-object v0, Lcom/mapbox/mapboxsdk/log/Logger;->logger:Lcom/mapbox/mapboxsdk/log/LoggerDefinition;

    invoke-interface {v0, p0, p1}, Lcom/mapbox/mapboxsdk/log/LoggerDefinition;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 204
    sget v0, Lcom/mapbox/mapboxsdk/log/Logger;->logLevel:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 205
    sget-object v0, Lcom/mapbox/mapboxsdk/log/Logger;->logger:Lcom/mapbox/mapboxsdk/log/LoggerDefinition;

    invoke-interface {v0, p0, p1, p2}, Lcom/mapbox/mapboxsdk/log/LoggerDefinition;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
