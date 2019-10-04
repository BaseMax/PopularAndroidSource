.class public final Lc/c/a/l/a/a;
.super Ljava/lang/Object;
.source "CafeTrack.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/l/a/a$a;
    }
.end annotation


# static fields
.field public static final synthetic a:[Lh/i/i;

.field public static final b:Lh/c;

.field public static final c:Lc/c/a/l/a/a$a;


# instance fields
.field public final d:Lh/c;

.field public final e:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

.field public final f:Lcom/google/android/exoplayer2/source/TrackGroupArray;

.field public final g:Lcom/google/android/exoplayer2/Format;

.field public final h:I

.field public final i:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lh/i/i;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lc/c/a/l/a/a;

    invoke-static {v2}, Lh/f/b/k;->a(Ljava/lang/Class;)Lh/i/c;

    move-result-object v2

    const-string v3, "trackName"

    const-string v4, "getTrackName()Ljava/lang/String;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lh/i/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lh/f/b/k;->a(Lkotlin/jvm/internal/PropertyReference1;)Lh/i/j;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lc/c/a/l/a/a;->a:[Lh/i/i;

    new-instance v0, Lc/c/a/l/a/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/c/a/l/a/a$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Lc/c/a/l/a/a;->c:Lc/c/a/l/a/a$a;

    .line 1
    sget-object v0, Lcom/farsitel/bazaar/player/quality/CafeTrack$Companion$qualityInfo$2;->a:Lcom/farsitel/bazaar/player/quality/CafeTrack$Companion$qualityInfo$2;

    invoke-static {v0}, Lh/d;->a(Lh/f/a/a;)Lh/c;

    move-result-object v0

    sput-object v0, Lc/c/a/l/a/a;->b:Lh/c;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/Format;IILjava/lang/String;)V
    .locals 1

    const-string v0, "selectionOverride"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trackGroupArray"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "format"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/l/a/a;->e:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    iput-object p2, p0, Lc/c/a/l/a/a;->f:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iput-object p3, p0, Lc/c/a/l/a/a;->g:Lcom/google/android/exoplayer2/Format;

    iput p4, p0, Lc/c/a/l/a/a;->h:I

    iput p5, p0, Lc/c/a/l/a/a;->i:I

    .line 2
    new-instance p1, Lcom/farsitel/bazaar/player/quality/CafeTrack$trackName$2;

    invoke-direct {p1, p0, p6}, Lcom/farsitel/bazaar/player/quality/CafeTrack$trackName$2;-><init>(Lc/c/a/l/a/a;Ljava/lang/String;)V

    invoke-static {p1}, Lh/d;->a(Lh/f/a/a;)Lh/c;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/l/a/a;->d:Lh/c;

    return-void
.end method

.method public static final synthetic a()Lh/c;
    .locals 1

    .line 1
    sget-object v0, Lc/c/a/l/a/a;->b:Lh/c;

    return-object v0
.end method


# virtual methods
.method public final b()Lcom/google/android/exoplayer2/Format;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/l/a/a;->g:Lcom/google/android/exoplayer2/Format;

    return-object v0
.end method

.method public final c()I
    .locals 1

    .line 1
    iget v0, p0, Lc/c/a/l/a/a;->h:I

    return v0
.end method

.method public final d()I
    .locals 1

    .line 1
    iget v0, p0, Lc/c/a/l/a/a;->i:I

    return v0
.end method

.method public final e()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/l/a/a;->e:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    return-object v0
.end method

.method public final f()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/l/a/a;->f:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lc/c/a/l/a/a;->d:Lh/c;

    sget-object v1, Lc/c/a/l/a/a;->a:[Lh/i/i;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lh/c;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "trackName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lc/c/a/l/a/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/l/a/a;->g:Lcom/google/android/exoplayer2/Format;

    iget v1, v1, Lcom/google/android/exoplayer2/Format;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
