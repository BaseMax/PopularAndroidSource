.class Lcom/codahale/metrics/Slf4jReporter$WarnLoggerProxy;
.super Lcom/codahale/metrics/Slf4jReporter$LoggerProxy;
.source "Slf4jReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codahale/metrics/Slf4jReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WarnLoggerProxy"
.end annotation


# direct methods
.method public constructor <init>(Lorg/slf4j/Logger;)V
    .locals 0

    .line 349
    invoke-direct {p0, p1}, Lcom/codahale/metrics/Slf4jReporter$LoggerProxy;-><init>(Lorg/slf4j/Logger;)V

    return-void
.end method


# virtual methods
.method public isEnabled(Lorg/slf4j/Marker;)Z
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/codahale/metrics/Slf4jReporter$WarnLoggerProxy;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->isWarnEnabled(Lorg/slf4j/Marker;)Z

    move-result p1

    return p1
.end method

.method public varargs log(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/codahale/metrics/Slf4jReporter$WarnLoggerProxy;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2, p3}, Lorg/slf4j/Logger;->warn(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
