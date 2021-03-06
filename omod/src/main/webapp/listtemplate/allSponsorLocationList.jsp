<div style="margin:5px; font-size: 0.9em;">
	<div style="margin-bottom: 3px; margin-top: 3px; font-weight: bold;">
		<table width="80%">
			<tr>
				<td width="5%" class="numberCol">#.</td>
				<td width="30%" class="locationCol">Location</td>
				<td width="25%" class="personNameCol">Sponsor</td>
				<td width="30%" class="testCol">Description</td>
				<td width="10%" class="testDateCol">From</td>
			</tr>
		</table>
	</div>
	
	<div style="margin-bottom: 3px; margin-top: 3px;">
		<table width="80%">
			<c:if test="${empty locationSponsors}"><tr><td colspan="5" width="100%" style="text-align: center; border: 1px solid #cccccc; padding:1px 2px 1px 2px; vertical-align: text-top;"><spring:message code="@MODULE_ID@.tablelist.empty"/></td></tr></c:if>
			<c:forEach items="${locationSponsors}" var="spLoc" varStatus="status">
				<tr>
					<td width="5%" style="border: 1px solid #cccccc; padding:1px 2px 1px 2px; vertical-align: text-top;" class="numberCol"><a href="locationsponsor.form?sponsorLocationId=${spLoc.sponsorLocationId}"><div class="menuLink">${status.count}.</div></a></td>
					<td width="30%" style="border: 1px solid #cccccc; padding:1px 2px 1px 2px; vertical-align: text-top;" class="personNameCol"><a href="locationsponsor.list?page=1&locationId=${spLoc.location.locationId}"><div class="menuLink">${spLoc.location.name}</div></a></td>
					<td width="25%" style="border: 1px solid #cccccc; padding:1px 2px 1px 2px; vertical-align: text-top;" class="locationCol"><a href="locationsponsor.list?page=1&sponsorId=${spLoc.sponsor.sponsorId}"><div class="menuLink">${spLoc.sponsor.name} - ${spLoc.sponsor.description}</div></a></td>
					<td width="30%" style="border: 1px solid #cccccc; padding:1px 2px 1px 2px; vertical-align: text-top;" class="testCol">${spLoc.description}</td>
					<td width="10%" style="border: 1px solid #cccccc; padding:1px 2px 1px 2px; vertical-align: text-top;" class="testDateCol">${spLoc.sponseredFrom}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	
	<div style="margin-bottom: 3px; margin-top: 3px;">
		<table width="80%">
			<tr style="border: 1px solid #cccccc; padding:1px 2px 1px 2px; vertical-align: text-top;">
				<td>${pageInfos}</td>
				<td style="text-align: center;">
					<div style="display:inline; float: right;">
						<table>
							<tr>
								<c:if test="${prevPage!=-1}"><td width="100px" style="border: 1px solid #cccccc; padding:1px 2px 1px 2px; vertical-align: text-top;"><a href="locationsponsor.list?page=1"><div class="menuTab">|&lt; First</div></a></td>
								<td width="100px" style="border: 1px solid #cccccc; padding:1px 2px 1px 2px; vertical-align: text-top;"><a href="locationsponsor.list?page=${prevPage}">
									<div class="menuTab">&lt;&lt; Previous</div></a>
								</td></c:if>
								<c:forEach items="${numberOfPages}" var="page" varStatus="status">
									<td style="border: 1px solid #cccccc; padding:1px 4px 1px 4px; vertical-align: text-top;"><a href="locationsponsor.list?page=${page}">
										<div class="menuTab <c:if test="${param.page==page}">menuTabCurrent</c:if>">${page}</div>										
									</a></td>
								</c:forEach>
								<c:if test="${nextPage!=-1}"><td width="100px" style="border: 1px solid #cccccc; padding:1px 2px 1px 2px; vertical-align: text-top;"><a href="locationsponsor.list?page=${nextPage}">
									<div class="menuTab">Next &gt;&gt;</div></a>
								</td>
								<td width="100px" style="border: 1px solid #cccccc; padding:1px 2px 1px 2px; vertical-align: text-top;"><a href="locationsponsor.list?page=${lastPage}">
									<div class="menuTab">Last |&gt;</div>
								</a></td></c:if>
							</tr>
						</table>
					</div><div style="clear: right;"></div>
				</td>
			</tr>
		</table>
	</div>
</div>