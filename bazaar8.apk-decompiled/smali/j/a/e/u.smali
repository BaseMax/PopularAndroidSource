.class public interface abstract Lj/a/e/u;
.super Ljava/lang/Object;
.source "PushObserver.java"


# static fields
.field public static final a:Lj/a/e/u;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lj/a/e/t;

    invoke-direct {v0}, Lj/a/e/t;-><init>()V

    sput-object v0, Lj/a/e/u;->a:Lj/a/e/u;

    return-void
.end method


# virtual methods
.method public abstract a(ILokhttp3/internal/http2/ErrorCode;)V
.end method

.method public abstract a(ILjava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lj/a/e/a;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract a(ILjava/util/List;Z)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lj/a/e/a;",
            ">;Z)Z"
        }
    .end annotation
.end method

.method public abstract a(ILk/i;IZ)Z
.end method
