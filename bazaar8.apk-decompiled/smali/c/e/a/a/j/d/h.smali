.class public interface abstract Lc/e/a/a/j/d/h;
.super Ljava/lang/Object;
.source "HlsExtractorFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/e/a/a/j/d/h$a;
    }
.end annotation


# static fields
.field public static final a:Lc/e/a/a/j/d/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc/e/a/a/j/d/f;

    invoke-direct {v0}, Lc/e/a/a/j/d/f;-><init>()V

    sput-object v0, Lc/e/a/a/j/d/h;->a:Lc/e/a/a/j/d/h;

    return-void
.end method


# virtual methods
.method public abstract a(Lc/e/a/a/e/g;Landroid/net/Uri;Lcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;Lc/e/a/a/o/F;Ljava/util/Map;Lc/e/a/a/e/h;)Lc/e/a/a/j/d/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/a/a/e/g;",
            "Landroid/net/Uri;",
            "Lcom/google/android/exoplayer2/Format;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            "Lc/e/a/a/o/F;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lc/e/a/a/e/h;",
            ")",
            "Lc/e/a/a/j/d/h$a;"
        }
    .end annotation
.end method
