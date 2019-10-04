.class public interface abstract Lio/fabric/sdk/android/services/network/c$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/fabric/sdk/android/services/network/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "c"
.end annotation


# static fields
.field public static final DEFAULT:Lio/fabric/sdk/android/services/network/c$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 313
    new-instance v0, Lio/fabric/sdk/android/services/network/c$c$1;

    invoke-direct {v0}, Lio/fabric/sdk/android/services/network/c$c$1;-><init>()V

    sput-object v0, Lio/fabric/sdk/android/services/network/c$c;->DEFAULT:Lio/fabric/sdk/android/services/network/c$c;

    return-void
.end method


# virtual methods
.method public abstract create(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract create(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
