.class public Lb/x/a;
.super Ljava/lang/Object;
.source "CollapsiblePreferenceGroupController.java"

# interfaces
.implements Landroidx/preference/Preference$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/x/b;->a(Landroidx/preference/PreferenceGroup;Ljava/util/List;)Lb/x/b$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/preference/PreferenceGroup;

.field public final synthetic b:Lb/x/b;


# direct methods
.method public constructor <init>(Lb/x/b;Landroidx/preference/PreferenceGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/x/a;->b:Lb/x/b;

    iput-object p2, p0, Lb/x/a;->a:Landroidx/preference/PreferenceGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/preference/Preference;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lb/x/a;->a:Landroidx/preference/PreferenceGroup;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->h(I)V

    .line 2
    iget-object v0, p0, Lb/x/a;->b:Lb/x/b;

    iget-object v0, v0, Lb/x/b;->a:Lb/x/w;

    invoke-virtual {v0, p1}, Lb/x/w;->a(Landroidx/preference/Preference;)V

    .line 3
    iget-object p1, p0, Lb/x/a;->a:Landroidx/preference/PreferenceGroup;

    .line 4
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->M()Landroidx/preference/PreferenceGroup$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p1}, Landroidx/preference/PreferenceGroup$a;->a()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
