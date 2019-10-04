.class public final enum Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;
.super Ljava/lang/Enum;
.source "PlayPauseView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lir/cafebazaar/inline/ux/audio/PlayPauseView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BUFFERING:Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;

.field public static final enum ERROR:Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;

.field public static final enum PAUSED:Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;

.field public static final enum PLAYING:Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;

.field public static final enum STOPPED:Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;

.field public static final synthetic a:[Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;

    const/4 v1, 0x0

    const-string v2, "BUFFERING"

    invoke-direct {v0, v2, v1}, Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;->BUFFERING:Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;

    .line 2
    new-instance v0, Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;

    const/4 v2, 0x1

    const-string v3, "PLAYING"

    invoke-direct {v0, v3, v2}, Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;->PLAYING:Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;

    .line 3
    new-instance v0, Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;

    const/4 v3, 0x2

    const-string v4, "STOPPED"

    invoke-direct {v0, v4, v3}, Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;->STOPPED:Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;

    .line 4
    new-instance v0, Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;

    const/4 v4, 0x3

    const-string v5, "ERROR"

    invoke-direct {v0, v5, v4}, Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;->ERROR:Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;

    .line 5
    new-instance v0, Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;

    const/4 v5, 0x4

    const-string v6, "PAUSED"

    invoke-direct {v0, v6, v5}, Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;->PAUSED:Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;

    const/4 v0, 0x5

    .line 6
    new-array v0, v0, [Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;

    sget-object v6, Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;->BUFFERING:Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;

    aput-object v6, v0, v1

    sget-object v1, Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;->PLAYING:Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;

    aput-object v1, v0, v2

    sget-object v1, Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;->STOPPED:Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;

    aput-object v1, v0, v3

    sget-object v1, Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;->ERROR:Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;

    aput-object v1, v0, v4

    sget-object v1, Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;->PAUSED:Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;

    aput-object v1, v0, v5

    sput-object v0, Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;->a:[Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;
    .locals 1

    .line 1
    const-class v0, Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;

    return-object p0
.end method

.method public static values()[Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;
    .locals 1

    .line 1
    sget-object v0, Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;->a:[Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;

    invoke-virtual {v0}, [Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;

    return-object v0
.end method
