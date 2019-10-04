.class public interface abstract Lj/t;
.super Ljava/lang/Object;
.source "CookieJar.java"


# static fields
.field public static final a:Lj/t;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lj/s;

    invoke-direct {v0}, Lj/s;-><init>()V

    sput-object v0, Lj/t;->a:Lj/t;

    return-void
.end method


# virtual methods
.method public abstract a(Lj/D;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/D;",
            ")",
            "Ljava/util/List<",
            "Lj/r;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(Lj/D;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/D;",
            "Ljava/util/List<",
            "Lj/r;",
            ">;)V"
        }
    .end annotation
.end method
