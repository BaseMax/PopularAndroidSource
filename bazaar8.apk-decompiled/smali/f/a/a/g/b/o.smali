.class public synthetic Lf/a/a/g/b/o;
.super Ljava/lang/Object;
.source "PlayPauseView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lir/cafebazaar/inline/ux/audio/PlayPauseView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;->values()[Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lf/a/a/g/b/o;->a:[I

    :try_start_0
    sget-object v0, Lf/a/a/g/b/o;->a:[I

    sget-object v1, Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;->PLAYING:Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lf/a/a/g/b/o;->a:[I

    sget-object v1, Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;->BUFFERING:Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lf/a/a/g/b/o;->a:[I

    sget-object v1, Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;->PAUSED:Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lf/a/a/g/b/o;->a:[I

    sget-object v1, Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;->ERROR:Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lf/a/a/g/b/o;->a:[I

    sget-object v1, Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;->STOPPED:Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method
