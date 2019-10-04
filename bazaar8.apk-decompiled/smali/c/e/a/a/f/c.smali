.class public interface abstract Lc/e/a/a/f/c;
.super Ljava/lang/Object;
.source "MediaCodecSelector.java"


# static fields
.field public static final a:Lc/e/a/a/f/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc/e/a/a/f/b;

    invoke-direct {v0}, Lc/e/a/a/f/b;-><init>()V

    sput-object v0, Lc/e/a/a/f/c;->a:Lc/e/a/a/f/c;

    return-void
.end method


# virtual methods
.method public abstract a()Lc/e/a/a/f/a;
.end method

.method public abstract a(Ljava/lang/String;ZZ)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/List<",
            "Lc/e/a/a/f/a;",
            ">;"
        }
    .end annotation
.end method
