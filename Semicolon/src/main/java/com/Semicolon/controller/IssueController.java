package com.Semicolon.controller; // 패키지명은 실제 프로젝트에 맞게

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller // 서블릿 대신 Spring MVC의 컨트롤러임을 명시
public class IssueController {

    @GetMapping("/main/issuelist") // 이슈 목록 페이지
    public String issueList() {
        System.out.println("Spring MVC IssueController: GET /main/issuelist 요청 수신.");
        return "organization/issue/issuelist"; // WEB-INF/views/organization/issue/issuelist.jsp
    }

 // 2. 이슈 상세 페이지 매핑 (새로 추가)
    @GetMapping("/main/issue/{issueId}") // {issueId}는 URL에서 변수를 추출하겠다는 의미
    public String getIssueDetail(@PathVariable("issueId") String issueId, Model model) {
        System.out.println("Spring MVC IssueController: GET /main/issue/" + issueId + " 요청 수신.");

        // 여기에서 issueId를 사용하여 데이터베이스에서 해당 이슈의 상세 정보를 조회합니다.
        // (가장 중요한 부분입니다. 실제 데이터를 가져와서 model에 넣어주세요.)
        // 예: IssueDto issue = issueService.getIssueById(issueId);
        // model.addAttribute("issue", issue); // JSP에서 'issue'라는 이름으로 접근 가능

        // 임시 데이터 (실제 데이터로 교체해야 함)
        model.addAttribute("issueName", "ISU-15");
        model.addAttribute("taskName", "TSK-13(클릭하면 해당일감으로 이동합니다.)");
        model.addAttribute("issueContent", "내용을 입력하세요.");
        // 기타 필요 데이터 (작성자, 시간, 댓글 목록 등)

        return "organization/issue/issueDetail"; // WEB-INF/views/organization/issue/issueDetail.jsp
    }
}