.class public final Lcom/farsitel/bazaar/ui/cinema/season/SeasonPickerParams;
.super Ljava/lang/Object;
.source "SeasonPickerParams.kt"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final id:Ljava/lang/String;

.field public final referrer:Ljava/lang/String;

.field public final seasonIdx:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referrer"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/cinema/season/SeasonPickerParams;->id:Ljava/lang/String;

    iput p2, p0, Lcom/farsitel/bazaar/ui/cinema/season/SeasonPickerParams;->seasonIdx:I

    iput-object p3, p0, Lcom/farsitel/bazaar/ui/cinema/season/SeasonPickerParams;->referrer:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/season/SeasonPickerParams;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/ui/cinema/season/SeasonPickerParams;->seasonIdx:I

    return v0
.end method

.method public final getReferrer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/season/SeasonPickerParams;->referrer:Ljava/lang/String;

    return-object v0
.end method
