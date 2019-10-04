.class abstract Lcom/codahale/metrics/Slf4jReporter$LoggerProxy;
.super Ljava/lang/Object;
.source "Slf4jReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codahale/metrics/Slf4jReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "LoggerProxy"
.end annotation


# instance fields
.field protected final logger:Lorg/slf4j/Logger;


# direct methods
.method public constructor <init>(Lorg/slf4j/Logger;)V
    .locals 0

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    iput-object p1, p0, Lcom/codahale/metrics/Slf4jReporter$LoggerProxy;->logger:Lorg/slf4j/Logger;

    return-void
.end method


# virtual methods
.method abstract isEnabled(Lorg/slf4j/Marker;)Z
.end method

.method varargs abstract log(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
.end method
