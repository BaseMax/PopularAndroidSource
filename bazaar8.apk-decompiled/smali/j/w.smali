.class public interface abstract Lj/w;
.super Ljava/lang/Object;
.source "Dns.java"


# static fields
.field public static final a:Lj/w;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lj/v;

    invoke-direct {v0}, Lj/v;-><init>()V

    sput-object v0, Lj/w;->a:Lj/w;

    return-void
.end method


# virtual methods
.method public abstract lookup(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end method
